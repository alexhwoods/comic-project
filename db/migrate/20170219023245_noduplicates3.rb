class Noduplicates3 < ActiveRecord::Migration
  def change
    execute "DROP INDEX no_duplicates2;"
  end
end
