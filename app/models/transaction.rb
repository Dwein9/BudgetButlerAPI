class Transaction < ApplicationRecord
  belongs_to :user
  has_many :expense_transactions
  has_many :expenses, through: :expense_transactions
end
