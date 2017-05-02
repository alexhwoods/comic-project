class RenameNewTable < ActiveRecord::Migration
  def change
    rename_table :meta_characters_pages, :pages
  end
end
