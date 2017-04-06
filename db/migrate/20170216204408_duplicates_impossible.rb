class DuplicatesImpossible < ActiveRecord::Migration
  def change 
  	execute "CREATE UNIQUE INDEX no_duplicates1 ON comics (title, issue_num, year);"
  	execute "CREATE UNIQUE INDEX no_duplicates2 ON comics (title, year);"
  end
end
