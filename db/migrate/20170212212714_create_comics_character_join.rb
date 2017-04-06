class CreateComicsCharacterJoin < ActiveRecord::Migration
  def change
    create_table :characters_comics, :id => false do |t|
    	t.integer "comic_id"
    	t.integer "character_id"
    end
    add_index("characters_comics", ['comic_id', 'character_id'])
  end
end
