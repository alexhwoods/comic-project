class FixFkMakeSingular < ActiveRecord::Migration
  def change
  	rename_column :characters, :meta_characters_id, :meta_character_id
  end
end
