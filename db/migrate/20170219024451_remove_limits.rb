class RemoveLimits < ActiveRecord::Migration
  def change
    change_column :comics, :title, :string, :limit => 255
    change_column :comics, :issue_name, :string, :limit => 255
  end
end
