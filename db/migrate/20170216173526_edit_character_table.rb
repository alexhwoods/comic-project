class EditCharacterTable < ActiveRecord::Migration
  def change
  	add_column :characters, :first_name, :string
  	add_column :characters, :last_name, :string
  	rename_column :characters, :name, :meta_characters_id
  	# add_index("characters", ['first_name', 'last_name', 'meta_characters_id'])
  	remove_column :characters, :year_created
  	remove_column :characters, :first_comic_id

  	# this info can be grabbed via the join
  	remove_column :characters, :publisher_id
  end
end
