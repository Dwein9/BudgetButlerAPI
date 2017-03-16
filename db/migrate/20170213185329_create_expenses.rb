class CreateExpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :expenses do |t|
      t.string :category
      t.float :budget
      t.integer :user_id
      t.string :month
      t.boolean :misc, :default => false

      t.timestamps
    end
  end
end
