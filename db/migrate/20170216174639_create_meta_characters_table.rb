class CreateMetaCharactersTable < ActiveRecord::Migration
  def change
    create_table :meta_characters do |t|
    	t.string "name"
    	t.string "publisher_id"
    end
  end
end
