class CreateIncomes < ActiveRecord::Migration[5.0]
  def change
    create_table :incomes do |t|
      t.float :amount
      t.string :name
      t.integer :user_id

      t.timestamps
    end
  end
end
