class CreateProjectArchives < ActiveRecord::Migration
  def change
    create_table :project_archives do |t|
      t.belongs_to :project, index: true
      t.belongs_to :drive, index: true

      t.timestamps null: false
    end
  end
end
