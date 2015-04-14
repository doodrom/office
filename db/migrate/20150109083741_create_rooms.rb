class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :room_name

      t.timestamps null: false
    end
  end
end
