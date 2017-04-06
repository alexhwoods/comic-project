class FixColNameMetaChars < ActiveRecord::Migration
  def change
  	rename_column :meta_characters, :publisher, :publisher_id
  end
end
