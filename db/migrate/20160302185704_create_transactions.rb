class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.text :description
      t.decimal :amount, precision: 8, scale: 2
      t.boolean :debit

      t.timestamps null: false
    end
  end
end
