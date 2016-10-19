class ChangeDateFormatInCheckouts < ActiveRecord::Migration
  def self.up
    change_column :checkouts, :date, :datetime
    change_column :checkouts, :return_date, :datetime

    rename_column :checkouts, :date, :borrow_date
  end

  def self.down
    rename_column :checkouts, :borrow_date, :date

    change_column :checkouts, :date, :date
    change_column :checkouts, :return_date, :date
  end
end
