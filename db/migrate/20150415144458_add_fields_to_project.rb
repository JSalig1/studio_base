class AddFieldsToProject < ActiveRecord::Migration
  def change
    add_column :projects, :name, :string
    add_column :projects, :booking_date, :datetime
    add_column :projects, :start_date, :datetime
  end
end
