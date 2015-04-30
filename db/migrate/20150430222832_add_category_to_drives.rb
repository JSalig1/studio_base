class AddCategoryToDrives < ActiveRecord::Migration
  def change
    add_column :drives, :category, :integer, default: 0
  end
end
