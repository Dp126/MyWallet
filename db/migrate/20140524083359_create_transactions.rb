class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :classify
      t.string :category
      t.text :description
      t.date :posted_on
      t.float :totalbalance

      t.timestamps
    end
  end
end
