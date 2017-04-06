class CreateComics < ActiveRecord::Migration
  def change
    create_table :comics do |t|
      # rails automatically adds an ID
      t.string "title", :limit => 80, :null => false
      t.string "issue_name", :limit => 80
      t.integer "issue_num"
      t.integer "year", :null => false
      t.string "story_arc", :limit => 100
      t.boolean "graphic_novel", :default => false
      t.string "imprint", :limit => 40
      t.string "publisher"
      t.timestamps null: false
    end
    
    add_index :comics, [:title, :issue_num, :year]
    add_index :comics, [:title, :year]

  end

end
