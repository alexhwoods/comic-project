class CreatePublishers < ActiveRecord::Migration
  def change
    create_table(:publishers, :primary_key => 'name') do |t|
      t.timestamps null: false
    end
  end
end
