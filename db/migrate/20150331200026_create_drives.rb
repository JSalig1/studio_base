class CreateDrives < ActiveRecord::Migration
  def change
    create_table :drives do |t|
      t.string :number, null: false, unique: true

      t.timestamps null: false
    end
  end
end
