class CreateRoomsStaffs < ActiveRecord::Migration
  def change
    create_table :rooms_staffs do |t|
      t.belongs_to :room
      t.belongs_to :staff
    end
  end
end
