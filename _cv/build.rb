#!/usr/bin/env ruby
require 'date'
require 'fileutils'
require 'open3'
require 'rbconfig'
require 'tmpdir'
require 'yaml'

root = File.expand_path('..', __dir__)

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
  { 'id' => 'resume', 'title' => 'Industry Resume', 'description' => 'Applied ML research & engineering', 'name' => 'Wanglong_Lu_Resume', 'expected_pages' => 2 },
  { 'id' => 'cv', 'title' => 'Full CV', 'description' => 'Research, experience, publications & service', 'name' => 'Wanglong_Lu_CV' }
]

puts run!(RbConfig.ruby, File.join(__dir__, 'update_publications.rb'))
Dir.mktmpdir('wanglong-cv-') do |temporary|
  documents.each do |document|
    source = File.join(__dir__, "#{document.fetch('name')}.tex")
    2.times { run!(latex, '-interaction=nonstopmode', '-halt-on-error', "-output-directory=#{temporary}", source, chdir: root) }
    log = File.read(File.join(temporary, "#{document.fetch('name')}.log"))
    raise "Layout overflow in #{source}; fix the source before publishing." if log.match?(/Overfull \\[hv]box/)
    pdf = File.join(temporary, "#{document.fetch('name')}.pdf")
    document['pages'] = run!(info, pdf).match(/^Pages:\s+(\d+)/).captures.first.to_i
    expected = document.delete('expected_pages')
    raise "The industry resume must stay #{expected} pages, not #{document['pages']}. Edit the content before publishing." if expected && document['pages'] != expected
    document['pdf'] = "/files/cv/#{document.fetch('name')}.pdf"
    document['images'] = (1..document.fetch('pages')).map { |number| "/images/cv/#{document.fetch('id')}-page-#{number}.png" }
    document.fetch('images').each_with_index do |image, index|
      destination = File.join(temporary, File.basename(image, '.png'))
      run!(renderer, '-r', '125', '-png', '-singlefile', '-f', (index + 1).to_s, '-l', (index + 1).to_s, pdf, destination)
    end
  end

  # Publish only after both documents compile and pass the page-count checks.
  FileUtils.mkdir_p(File.join(root, 'files/cv'))
  FileUtils.mkdir_p(File.join(root, 'images/cv'))
  documents.each do |document|
    FileUtils.cp(File.join(temporary, "#{document.delete('name')}.pdf"), File.join(root, document.fetch('pdf')))
    document.fetch('images').each do |image|
      FileUtils.cp(File.join(temporary, File.basename(image)), File.join(root, image))
    end
  end
  today = Date.today
  metadata = { 'updated' => today.strftime('%B %d, %Y'), 'updated_iso' => today.iso8601, 'documents' => documents }
  File.write(File.join(root, '_data/cv_documents.yml'), YAML.dump(metadata), encoding: 'UTF-8')
end
documents.each { |document| puts "Built #{document.fetch('title')}: #{document.fetch('pages')} pages" }
