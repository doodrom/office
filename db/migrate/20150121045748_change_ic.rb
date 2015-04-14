class ChangeIc < ActiveRecord::Migration
  def change
      change_column :staffs, :ic, :string
  end
end
