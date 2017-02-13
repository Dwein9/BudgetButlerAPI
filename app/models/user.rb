class User < ApplicationRecord
  has_secure_password
  has_many :incomes
  has_many :expenses
  has_many :transactions
  has_many :goals
  has_many :savings
  validates :email,
    uniqueness: true,
    format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
  validates :password,
    presence: true,
    confirmation: true,
    length: { in: 6..24 }
end
