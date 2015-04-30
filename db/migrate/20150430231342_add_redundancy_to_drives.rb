class AddRedundancyToDrives < ActiveRecord::Migration
  def change
    add_column :drives, :redundancy, :boolean, default: false
  end
end
