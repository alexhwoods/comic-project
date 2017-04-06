class EditCreatorTable < ActiveRecord::Migration
  def change
  	rename_column :creators, :name, :first_name
  	add_column :creators, :last_name, :string
  end
end
