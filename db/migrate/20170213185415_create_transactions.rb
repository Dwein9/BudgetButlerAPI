class CreateTransactions < ActiveRecord::Migration[5.0]
  def change
    create_table :transactions do |t|
      t.integer :user_id
      t.string :name
      t.float :value
      t.integer :expense_id
      t.string :date

      t.timestamps
    end
  end
end
