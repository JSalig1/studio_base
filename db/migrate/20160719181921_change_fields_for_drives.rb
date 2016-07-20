class ChangeFieldsForDrives < ActiveRecord::Migration
  def change

    change_table :drives do |t|
      t.remove :category, :redundancy, :serial, :file_system, :check_out_status
      t.rename :number, :name

      t.string :project, null: false
      t.text   :notes
    end

  end
end
