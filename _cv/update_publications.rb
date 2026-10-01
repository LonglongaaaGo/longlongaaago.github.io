#!/usr/bin/env ruby
require 'yaml'
require 'date'
require 'cgi'

root = File.expand_path('..', __dir__)
source = File.join(__dir__, 'Wanglong_Lu_CV.tex')
aliases = %w[probability_based_pruning_cn.md efficient_face_restoration_perceptual_deblurring_cn.md]

def clean_text(value)
  CGI.unescapeHTML(value.to_s).gsub(/\[([^\]]+)\]\([^)]*\)/, '\1')
     .gsub(/[\*∗]/, '').gsub(/[‐‑–—]/, '-').gsub(/\s+/, ' ').strip
end

def tex(value)
  replacements = { '&' => '\&', '%' => '\%', '$' => '\$', '#' => '\#',
                   '_' => '\_', '{' => '\{', '}' => '\}', '~' => '\textasciitilde{}',
                   '^' => '\textasciicircum{}', '\\' => '\textbackslash{}' }
  value.to_s.gsub(/[&%$#_{}~^\\]/) { |character| replacements.fetch(character) }
end

papers = Dir.glob(File.join(root, '_publications', '*.md')).reject { |path| File.basename(path).start_with?('._') }.map do |path|
  name = File.basename(path)
  next if aliases.include?(name)
  front = File.read(path, encoding: 'UTF-8').match(/\A---\s*\n(.*?)\n---/m)
  raise "Missing metadata: #{path}" unless front
  data = YAML.safe_load(front[1], permitted_classes: [Date, Time], aliases: false)
  data['file'] = name
  data['year'] = Date.parse(data.fetch('date').to_s).year
  data
end.compact

theses, works = papers.partition { |paper| paper.fetch('venue').downcase.include?('thesis') }
preprints, published = works.partition { |paper| paper.fetch('venue').downcase.match?(/arxiv|research square/) }
groups = [['Peer-Reviewed Publications', published], ['Preprints', preprints], ['Dissertation', theses]]

entries = groups.flat_map do |heading, group|
  next [] if group.empty?
  sorted = group.sort_by { |paper| [-paper.fetch('year'), -paper.fetch('selection_score', 0), paper.fetch('title')] }
  ["\\cvsection{#{heading}}"] + sorted.map do |paper|
    title = clean_text(paper.fetch('title'))
    authors = clean_text(paper.fetch('excerpt'))
    venue = clean_text(paper.fetch('venue'))
    if paper.fetch('file') == 'image_splicing_tamper_detection.md'
      title = 'Image Splicing Tamper Detection Based on Multi-Scale Feature Priors [in Chinese; translated title]'
      authors = 'Wanglong Lu et al.'
    end
    authors = authors.gsub('Wang-Long Lu', 'Wanglong Lu')
    authors = tex(authors).gsub('Wanglong Lu', '\\textbf{Wanglong Lu}')
    year = paper.fetch('year')
    venue = "#{venue}, #{year}" unless venue.include?(year.to_s)
    url = paper['doiurl'] || paper['paperurl'] || "https://longlongaaago.github.io#{paper.fetch('permalink')}"
    "\\pubitem{#{tex(title)}}{#{authors}}{#{tex(venue)}}{#{url}}"
  end
end

content = File.read(source, encoding: 'UTF-8')
marker = /% BEGIN GENERATED PUBLICATIONS\n.*?% END GENERATED PUBLICATIONS/m
raise 'Publication markers missing' unless content.match?(marker)
updated = content.sub(marker) { "% BEGIN GENERATED PUBLICATIONS\n#{entries.join("\n")}\n% END GENERATED PUBLICATIONS" }
File.write(source, updated, encoding: 'UTF-8')
puts "Updated #{published.length} published works, #{preprints.length} preprints, and #{theses.length} dissertation; excluded #{aliases.length} duplicate language entries."
