class AddDetailsToDrive < ActiveRecord::Migration
  def change
    add_column :drives, :brand, :string
    add_column :drives, :serial, :string
    add_column :drives, :file_system, :integer, default: 0
    add_column :drives, :capacity, :float, null: false, default: 2.0
    add_column :drives, :location, :string
    add_column :drives, :check_out_status, :integer, default: 0
  end
end
