class CreateMpgSubmissions < ActiveRecord::Migration
  def change
    create_table :mpg_submissions do |t|
      t.string :mpg
      t.integer :vehicle_id

      t.timestamps null: false
    end
    add_index :mpg_submissions, :vehicle_id
  end
end
