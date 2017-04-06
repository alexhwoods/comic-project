class CharFkToInt < ActiveRecord::Migration
  def change
  	remove_column :characters, :meta_characters_id
  	add_column :characters, :meta_characters_id, :int
  end
end
