class AddDescriptionColumnComicTable < ActiveRecord::Migration
  def change
  	add_column :comics, :description, :string
  end
end
