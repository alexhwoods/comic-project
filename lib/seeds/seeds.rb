require 'csv'

csv_text = File.read(Rails.root.join('lib', 'seeds', 'comicsAll.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Comic.new
  t.title = row['title']
  t.issue_name = row['issue_name']
  t.issue_num = row['issue_num']
  t.year = row['year']
  t.story_arc = row['story_arc']
  t.publisher_id = row['publisher_id']
  t.image_name = row['image_name']

  if Comic.where(title: t.title, issue_num: t.issue_num, year: t.year).blank?
    if Comic.where(title: t.title, year: t.year).blank?
      puts "it says #{t.title}, #{t.year} is not in db"
      t.save
      puts "#{t.title}, #{t.year} saved"
    end
  end
end

puts "There are now #{Comic.count} rows in the comics table"