class AddHasPageParamToMetaChar < ActiveRecord::Migration
  def change
    add_column :meta_characters, :page_name, :string
  end
end
