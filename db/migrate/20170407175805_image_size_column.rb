class ImageSizeColumn < ActiveRecord::Migration
  def change
    add_column :pages, :image_size, :string
  end
end
