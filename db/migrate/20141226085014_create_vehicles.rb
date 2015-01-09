class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.string :vehicle_type
      t.string :vehicle_model
      t.string :color
      t.string :plate_num
      t.integer :staff_id

      t.timestamps null: false
    end
  end
end
