class AddReturnerToCheckouts < ActiveRecord::Migration
  def change
    add_column :checkouts, :returner, :string
    add_column :checkouts, :return_date, :date
  end
end
