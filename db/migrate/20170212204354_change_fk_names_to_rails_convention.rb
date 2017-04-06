class ChangeFkNamesToRailsConvention < ActiveRecord::Migration
  def change
  	rename_column :comics, :publisher, :publisher_id
  	rename_column :characters, :publisher, :publisher_id
  end
end
