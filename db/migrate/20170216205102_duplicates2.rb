class Duplicates2 < ActiveRecord::Migration
  def change
  	execute "CREATE UNIQUE INDEX no_duplicates_mc ON meta_characters (name, publisher_id);"
  	execute "CREATE UNIQUE INDEX no_duplicates_ch ON characters (first_name, last_name, meta_character_id);"
  end
end
