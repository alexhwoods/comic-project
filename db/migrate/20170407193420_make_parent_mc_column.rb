class MakeParentMcColumn < ActiveRecord::Migration
  def change
    add_column :meta_characters, :parent_mc_id, :integer
  end
end
