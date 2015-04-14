class ChangeRoom < ActiveRecord::Migration
  def change
      change_column :rooms, :room_name, :string
  end
end
