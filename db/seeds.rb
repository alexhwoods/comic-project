require 'csv'

# this part seeds the characters
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'comicsAll.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
# count = 0
# csv.each do |row|
#   t = Comic.new
#   t.title = row['title']
#   t.issue_name = row['issue_name']
#   t.issue_num = row['issue_num']
#   t.year = row['year']
#   t.story_arc = row['story_arc']
#   t.publisher_id = row['publisher_id']
#   t.image_name = row['image_name']

#   count = count + 1

#   if Comic.where(title: t.title, issue_name: t.issue_name, issue_num: t.issue_num, year: t.year).blank?
#     t.save
#     puts "#{t.title}, #{t.year} now in db"
#   else
#     puts "#{t.title}, #{t.year} already in db"
#   end
# end

puts "There are now #{Comic.count} rows in the comics table"
# puts count


# ************************ Now loading characters *************************
# csv_text = File.read(Rails.root.join('lib', 'seeds', 'characters.csv'))
# csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

# count = 0
# csv.each do |row|
#   # first save meta character
#   t = MetaCharacter.new
#   t.name = row['metaChar']
#   t.publisher_id = 'DC'     # just by how I gathered the data
#   if MetaCharacter.where(name: t.name, publisher_id: t.publisher_id).blank?
#     t.save
#   else
#     # do nothing
#   end

#   t = MetaCharacter.where(name: t.name, publisher_id: t.publisher_id).first
#   puts "The meta char is #{t.name}, #{t.publisher_id}"
#   puts t

#   char = Character.new
#   char.first_name = row['firstName']
#   char.last_name = row['lastName']

#   # fixme - problem here
#   char.meta_character_id = t.id

#   puts "58 reached"
#   if Character.where(first_name: char.first_name, last_name: char.last_name, meta_character_id: char.meta_character_id).blank?
#     char.save
#   else
#     char = Character.where(first_name: char.first_name, last_name: char.last_name, meta_character_id: char.meta_character_id).first
#   end

#   # alright at this point I have the metaCharacter and Character saved, and I have access to them
#   # now I need to save the character_comic relation tuple
#   # All I need left is the comic id
  
#   puts "69 reached"
#   comic = Comic.new
#   comic.title = row['title']
#   comic.issue_num = row['issue']
#   comic.year = row['year']


#   comic = Comic.where(title: comic.title, issue_num: comic.issue_num, year: comic.year).first

#   # and this line should create the record in the join table
#   if not comic.nil?
#     comic.characters << char
#     count = count + 1
#   else

#   end

# end

# puts count

# ************************ Now loading creators *************************
csv_text = File.read(Rails.root.join('lib', 'seeds', 'creators.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')

count = 0
csv.each do |row|
  # first save creator
  t = Creator.new
  t.name = row['creator']
  if Creator.where(name: t.name).blank?
    t.save
  else
    # do nothing
  end

  t = Creator.where(name: t.name).first
  puts "The creator's name is #{t.name}"
  puts t


  # now make a new comic_character instance

  comic = Comic.new
  comic.title = row['title']
  comic.issue_num = row['issueNum']
  comic.year = row['year']


  comic = Comic.where(title: comic.title, issue_num: comic.issue_num, year: comic.year).first

  # and this line should create the record in the join table
  if not comic.nil?
    comic.creators << t
    count = count + 1
  else
    # do nothing
  end

end

puts count















