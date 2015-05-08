class AddDetailsToArchives < ActiveRecord::Migration
  def change
    add_column :archives, :size, :integer, null: false, default: 0
    add_column :archives, :notes, :text, limit: 1024
  end
end
