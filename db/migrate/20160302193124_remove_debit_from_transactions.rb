class RemoveDebitFromTransactions < ActiveRecord::Migration
  def change
    remove_column :transactions, :debit, :boolean
  end
end
