class CreateStaffs < ActiveRecord::Migration
  def change
    create_table :staffs do |t|
        t.string :name 
        t.integer :ic
        t.string :position 
        t.string :address
      t.timestamps null: false
    end
    change_column :staffs, :ic, :string
  end
end
