class CreateCreators < ActiveRecord::Migration
  def change
    create_table :creators do |t|
      t.string "name"
      t.text "description"

      t.timestamps null: false
    end
  end
end
