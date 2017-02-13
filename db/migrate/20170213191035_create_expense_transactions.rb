class CreateExpenseTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :expense_transactions do |t|
      t.integer :expense_id
      t.integer :transaction_id

      t.timestamps
    end
  end
end
