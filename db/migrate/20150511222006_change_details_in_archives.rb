class ChangeDetailsInArchives < ActiveRecord::Migration
  def change
    change_column :archives, :size, :float, default: 0.00
  end
end
