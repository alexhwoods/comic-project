class LooserDuplicates < ActiveRecord::Migration
  def change
    execute "DROP INDEX no_duplicates1;"
    execute "CREATE UNIQUE INDEX no_duplicates1 ON comics (title, issue_name, issue_num, year);"
  end
end
