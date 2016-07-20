class DropProjectsAndArchives < ActiveRecord::Migration
  def change
    drop_table :archives
    drop_table :projects
  end
end
