#!/usr/bin/env ruby
require 'date'
require 'fileutils'
require 'open3'
require 'rbconfig'
require 'tmpdir'
require 'yaml'

root = File.expand_path('..', __dir__)
resumes_only = ARGV.delete('--resumes-only')
raise 'Usage: ruby _cv/build.rb [--resumes-only]' unless ARGV.empty?
today = Date.today
metadata_path = File.join(root, '_data/cv_documents.yml')
previous = File.file?(metadata_path) ? YAML.safe_load(File.read(metadata_path), permitted_classes: [Date], aliases: false) : {}

def executable(name)
  locations = ENV.fetch('PATH', '').split(File::PATH_SEPARATOR) + ['/Library/TeX/texbin', '/opt/homebrew/bin']
  locations.map { |directory| File.join(directory, name) }.find { |path| File.executable?(path) } ||
    raise("Missing #{name}. Install a TeX distribution and Poppler to build the PDFs locally.")
end

def run!(*arguments, **options)
  output, status = Open3.capture2e(*arguments, **options)
  raise "#{File.basename(arguments.first)} failed:\n#{output}" unless status.success?
  output
end

latex = executable('pdflatex')
info = executable('pdfinfo')
renderer = executable('pdftoppm')
documents = [
  { 'id' => 'resume', 'title' => 'Applied Scientist', 'description' => 'Method design, experiments & applied research', 'name' => 'Wanglong_Lu_Resume', 'public_name' => 'Wanglong_Lu_Applied_Scientist_Resume', 'aliases' => ['/files/cv/Wanglong_Lu_Resume.pdf'], 'expected_pages' => 2 },
  { 'id' => 'ml-engineer', 'title' => 'ML Engineer', 'description' => 'ML systems, deployment & AI tooling', 'name' => 'Wanglong_Lu_ML_Engineer_Resume', 'expected_pages' => 2 },
  { 'id' => 'cv', 'title' => 'Full CV', 'description' => 'Research, experience, publications & service', 'name' => 'Wanglong_Lu_CV' }
]

puts run!(RbConfig.ruby, File.join(__dir__, 'update_publications.rb')) unless resumes_only
Dir.mktmpdir('wanglong-cv-') do |temporary|
  documents.each do |document|
    source = File.join(__dir__, "#{document.fetch('name')}.tex")
    public_name = document.delete('public_name') || document.fetch('name')
    document['pdf'] = "/files/cv/#{public_name}.pdf"
    document['updated'] = today.strftime('%B %d, %Y')
    document['updated_iso'] = today.iso8601
    if resumes_only && document.fetch('id') == 'cv'
      pdf = File.join(root, document.fetch('pdf'))
      saved = (previous['documents'] || []).find { |entry| entry['id'] == 'cv' } || {}
      document['updated'] = saved['updated'] || previous['updated'] || document['updated']
      document['updated_iso'] = saved['updated_iso'] || previous['updated_iso'] || document['updated_iso']
    else
      2.times { run!(latex, '-interaction=nonstopmode', '-halt-on-error', "-output-directory=#{temporary}", source, chdir: root) }
      log = File.read(File.join(temporary, "#{document.fetch('name')}.log"))
      raise "Layout overflow in #{source}; fix the source before publishing." if log.match?(/Overfull \\[hv]box/)
      pdf = File.join(temporary, "#{document.fetch('name')}.pdf")
    end
    document['pages'] = run!(info, pdf).match(/^Pages:\s+(\d+)/).captures.first.to_i
    expected = document.delete('expected_pages')
    raise "#{document.fetch('title')} must stay #{expected} pages, not #{document['pages']}. Edit the content before publishing." if expected && document['pages'] != expected
    document['images'] = (1..document.fetch('pages')).map { |number| "/images/cv/#{document.fetch('id')}-page-#{number}.png" }
    if resumes_only && document.fetch('id') == 'cv'
      document.fetch('images').each { |image| raise "Missing preview: #{image}" unless File.file?(File.join(root, image)) }
      next
    end
    document.fetch('images').each_with_index do |image, index|
      destination = File.join(temporary, File.basename(image, '.png'))
      run!(renderer, '-r', '125', '-png', '-singlefile', '-f', (index + 1).to_s, '-l', (index + 1).to_s, pdf, destination)
    end
  end

  # Publish only after every requested document passes compilation and layout checks.
  FileUtils.mkdir_p(File.join(root, 'files/cv'))
  FileUtils.mkdir_p(File.join(root, 'images/cv'))
  documents.each do |document|
    name = document.delete('name')
    next if resumes_only && document.fetch('id') == 'cv'
    pdf = File.join(temporary, "#{name}.pdf")
    destinations = [document.fetch('pdf')] + (document.delete('aliases') || [])
    destinations.each { |destination| FileUtils.cp(pdf, File.join(root, destination)) }
    document.fetch('images').each do |image|
      FileUtils.cp(File.join(temporary, File.basename(image)), File.join(root, image))
    end
  end
  metadata = { 'updated' => today.strftime('%B %d, %Y'), 'updated_iso' => today.iso8601, 'documents' => documents }
  File.write(metadata_path, YAML.dump(metadata), encoding: 'UTF-8')
end
documents.each do |document|
  action = resumes_only && document.fetch('id') == 'cv' ? 'Kept' : 'Built'
  puts "#{action} #{document.fetch('title')}: #{document.fetch('pages')} pages"
end
