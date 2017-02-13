class CreateSavings < ActiveRecord::Migration[5.0]
  def change
    create_table :savings do |t|
      t.string :name
      t.float :budget
      t.integer :user_id

      t.timestamps
    end
  end
end
