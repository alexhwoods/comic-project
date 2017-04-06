class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string "name"
      t.string "publisher"
      t.integer "year_created"
      t.integer "first_comic_id"

      t.timestamps null: false
    end
  end
end
