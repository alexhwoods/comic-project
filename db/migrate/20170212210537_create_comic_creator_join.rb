class CreateComicCreatorJoin < ActiveRecord::Migration
  def change
    create_table :comics_creators, :id => false do |t|
    	t.integer "comic_id"
    	t.integer "creator_id"
    end
    add_index("comics_creators", ['comic_id', 'creator_id'])
  end
end
