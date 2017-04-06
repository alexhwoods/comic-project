class PublisherNameToString < ActiveRecord::Migration
  def change
  	change_column :publishers, :name, :string
  end
end
