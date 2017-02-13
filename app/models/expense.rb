class Expense < ApplicationRecord
  belongs_to :user
  has_many :expense_transactions
  has_many :transactions, through: :expense_transactions
end
