class ImageColumnToPage < ActiveRecord::Migration
  def change
    add_column :pages, :image_name, :string
  end
end
