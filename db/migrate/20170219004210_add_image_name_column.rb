class AddImageNameColumn < ActiveRecord::Migration
  def change
    add_column :comics, :image_name, :string
  end
end
