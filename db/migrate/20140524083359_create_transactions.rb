class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.float :amount
      t.string :type
      t.string :label
      t.text :description
      t.date :posted_on

      t.timestamps
    end
  end
end
