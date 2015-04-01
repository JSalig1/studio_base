class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.belongs_to :archive, index: true
      t.string :project_number, null: false, unique: true

      t.timestamps null: false
    end
  end
end
