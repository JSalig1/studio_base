class CreateArchives < ActiveRecord::Migration
  def change
    create_table :archives do |t|
      t.string :archive_number, null: false, unique: true

      t.timestamps null: false
    end
  end
end
