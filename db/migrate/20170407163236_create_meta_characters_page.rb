class CreateMetaCharactersPage < ActiveRecord::Migration
  def change
    create_table :meta_characters_pages do |t|
      # rails automatically adds an ID
      t.integer "meta_character_id"
      t.text "page"
    end
  end
end
