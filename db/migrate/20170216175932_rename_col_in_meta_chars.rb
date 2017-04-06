class RenameColInMetaChars < ActiveRecord::Migration
  def change
  	rename_column :meta_characters, :publisher_id, :publisher
  end
end
