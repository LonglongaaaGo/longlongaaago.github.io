#!/usr/bin/env ruby
require 'yaml'
require 'date'
require 'cgi'

root = File.expand_path('..', __dir__)
source = File.join(__dir__, 'Wanglong_Lu_CV.tex')

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
  front = File.read(path, encoding: 'UTF-8').match(/\A---\s*\n(.*?)\n---/m)
  raise "Missing metadata: #{path}" unless front
  data = YAML.safe_load(front[1], permitted_classes: [Date, Time], aliases: false)
  data['file'] = name
  data['year'] = data['publication_year'] || Date.parse(data.fetch('date').to_s).year
  data
end.compact
aliases, papers = papers.partition { |paper| paper['publication_alias'] == true }

theses, works = papers.partition { |paper| paper.fetch('venue').downcase.include?('thesis') }
preprints, published = works.partition do |paper|
  paper['publication_status'] == 'submitted' || paper.fetch('venue').downcase.match?(/arxiv|research square/)
end
groups = [['Peer-Reviewed Publications', published], ['Preprints & Submitted Manuscripts', preprints], ['Dissertation', theses]]

entries = groups.flat_map do |heading, group|
  next [] if group.empty?
  sorted = group.sort_by { |paper| [-paper.fetch('year'), -paper.fetch('selection_score', 0), paper.fetch('title')] }
  ["\\cvsection{#{tex(heading)}}"] + sorted.map do |paper|
    title = clean_text(paper['cv_title'] || paper.fetch('title'))
    authors = clean_text(paper['cv_authors'] || paper.fetch('excerpt'))
    venue = clean_text(paper.fetch('venue'))
    authors = authors.gsub('Wang-Long Lu', 'Wanglong Lu')
    authors = tex(authors).gsub('Wanglong Lu', '\\textbf{Wanglong Lu}')
    authors += "; #{tex(paper['author_role'])}" if paper['author_role']
    year = paper.fetch('year')
    venue = "#{venue}, #{year}" unless venue.include?(year.to_s)
    venue += " (online #{paper['online_year']})" if paper['online_year']
    if paper['publication_status'] == 'submitted'
      venue += '; submitted'
      venue += " to #{paper['submission_venue']}" if paper['submission_venue']
    end
    url = paper['doiurl'] || paper['paperurl'] || "https://longlongaaago.github.io#{paper.fetch('permalink')}"
    "\\pubitem{#{tex(title)}}{#{authors}}{#{tex(venue)}}{#{url}}"
  end
end

content = File.read(source, encoding: 'UTF-8')
marker = /% BEGIN GENERATED PUBLICATIONS\n.*?% END GENERATED PUBLICATIONS/m
raise 'Publication markers missing' unless content.match?(marker)
updated = content.sub(marker) { "% BEGIN GENERATED PUBLICATIONS\n#{entries.join("\n")}\n% END GENERATED PUBLICATIONS" }
patent_data = YAML.safe_load(File.read(File.join(root, '_data/patents.yml'), encoding: 'UTF-8'), aliases: false)
patents = patent_data.fetch('patents')
patent_entries = ["\\cvsection{Granted Patents}",
                  "Co-inventor on #{patents.length} granted Chinese invention patents. All grant certificates list #{tex(patent_data.fetch('assignee_at_grant'))} as the assignee; titles are translated.",
                  '\\begin{points}']
patent_entries += patents.map do |patent|
  "\\item #{tex(patent.fetch('title'))}. #{tex(patent.fetch('number'))}; granted #{patent.fetch('granted')}; inventor #{patent.fetch('inventor_position')}/#{patent.fetch('inventor_count')}."
end
patent_entries << '\\end{points}'
patent_marker = /% BEGIN GENERATED PATENTS\n.*?% END GENERATED PATENTS/m
raise 'Patent markers missing' unless updated.match?(patent_marker)
updated = updated.sub(patent_marker) { "% BEGIN GENERATED PATENTS\n#{patent_entries.join("\n")}\n% END GENERATED PATENTS" }
File.write(source, updated, encoding: 'UTF-8')
puts "Updated #{published.length} published works, #{preprints.length} preprints, and #{theses.length} dissertation; excluded #{aliases.length} duplicate language entries."
puts "Updated #{patents.length} granted patents from shared certificate metadata."
