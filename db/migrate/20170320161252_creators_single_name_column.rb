class CreatorsSingleNameColumn < ActiveRecord::Migration
  def change
    rename_column :creators, :first_name, :name
    remove_column :creators, :last_name
  end
end
