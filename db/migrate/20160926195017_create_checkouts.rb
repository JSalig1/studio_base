class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|

      t.belongs_to :drive, index: true
      t.string :borrower, null: false
      t.string :status, null: false
      t.date :date, null: false
      t.text :purpose

      t.timestamps null: false
    end
  end
end
