class GiveComicMainCharacter < ActiveRecord::Migration
  def change
    add_column :comics, :main_character_id, :integer
  end
end
