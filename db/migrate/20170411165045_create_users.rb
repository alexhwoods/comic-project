class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    # rails automatically adds an ID
      t.string "email", :limit => 80, :null => false

      # I know this is bad. I'll change it later.
      t.string "password", :limit => 80
    end
  end
end
