User.create(name: "Ian", email: "ian@ian.ian", password: "password", password_confirmation: "password")
Expense.create(category: "Misc", budget: 50, user_id: 1, misc: true)
Expense.create(category: "Coffee", budget: 50, user_id: 1)
Expense.create(category: "Food", budget: 50, user_id: 1)
Expense.create(category: "Bills", budget: 50, user_id: 1)

Transaction.create(expense_id: 2, user_id: 1, name: "Starbucks", value: 4.50, day: "2017-01-01")
Transaction.create(expense_id: 2, user_id: 1, name: "Dunkin Donuts", value: 3.25, day: "2017-01-13")
Transaction.create(expense_id: 2, user_id: 1, name: "Starbucks", value: 4.75, day: "2017-01-11")
Transaction.create(expense_id: 2, user_id: 1, name: "Dunkin Donuts", value: 5.25, day: "2017-01-13")
Transaction.create(expense_id: 2, user_id: 1, name: "Starbucks", value: 3.50, day: "2017-01-13")
Transaction.create(expense_id: 2, user_id: 1, name: "Dunkin Donuts", value: 2.25, day: "2017-01-20")

Transaction.create(expense_id: 2, user_id: 1, name: "Starbucks", value: 4.50, day: "2017-02-01")
Transaction.create(expense_id: 2, user_id: 1, name: "Dunkin Donuts", value: 3.25, day: "2017-02-03")
Transaction.create(expense_id: 2, user_id: 1, name: "Starbucks", value: 4.75, day: "2017-02-04")
Transaction.create(expense_id: 2, user_id: 1, name: "Dunkin Donuts", value: 5.25, day: "2017-02-07")
Transaction.create(expense_id: 2, user_id: 1, name: "Starbucks", value: 3.50, day: "2017-02-11")
Transaction.create(expense_id: 2, user_id: 1, name: "Dunkin Donuts", value: 2.25, day: "2017-02-23")

Transaction.create(expense_id: 3, user_id: 1, name: "Essen", value: 8.75, day: "2017-01-19")
Transaction.create(expense_id: 3, user_id: 1, name: "Dig Inn", value: 12.25, day: "2017-02-10")
Transaction.create(expense_id: 3, user_id: 1, name: "Essen", value: 9.75, day: "2017-01-19")
Transaction.create(expense_id: 3, user_id: 1, name: "Pizza", value: 10.25, day: "2017-02-10")
Transaction.create(expense_id: 3, user_id: 1, name: "Essen", value: 5.75, day: "2017-01-19")
Transaction.create(expense_id: 3, user_id: 1, name: "Pizza", value: 8.25, day: "2017-02-10")
Transaction.create(expense_id: 3, user_id: 1, name: "Essen", value: 6.75, day: "2017-01-19")
Transaction.create(expense_id: 3, user_id: 1, name: "Pizza", value: 4.25, day: "2017-02-10")


Transaction.create(expense_id: 4, user_id: 1, name: "Rent", value: 1000, day: "2017-01-01")
Transaction.create(expense_id: 4, user_id: 1, name: "Car", value: 400, day: "2017-01-07")
Transaction.create(expense_id: 4, user_id: 1, name: "Electric", value: 100, day: "2017-01-08")
Transaction.create(expense_id: 4, user_id: 1, name: "Gas", value: 50, day: "2017-01-15")
Transaction.create(expense_id: 4, user_id: 1, name: "Rent", value: 1000, day: "2017-02-01")
Transaction.create(expense_id: 4, user_id: 1, name: "Car", value: 400, day: "2017-02-02")
Transaction.create(expense_id: 4, user_id: 1, name: "Electric", value: 100, day: "2017-02-03")
Transaction.create(expense_id: 4, user_id: 1, name: "Gas", value: 50, day: "2017-02-05")

Goal.create(name: "Vacation", budget: 1000, user_id: 1)
Income.create(name: "Flatiron Engineer", amount: 5000, user_id: 1)
Saving.create(name: "Corporate Bank", budget: 3000, user_id: 1)
