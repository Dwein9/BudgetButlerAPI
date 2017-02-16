module Api
  module V1

class ExpensesController < ApplicationController

  def index
    if logged_in?
      render json: @current_user.expenses.order(budget: :desc).to_json
    end
  end

  def create
    if logged_in?
      value = expense_params[:value].to_f
      expense = Expense.new(category: transaction_params[:category], budget: transaction_params[:budget])
      expense.user = current_user
      expense.save
      render json: @current_user.expenses.order(budget: :desc).to_json
    end
  end

  def update
    if logged_in?
      value = expense_params[:value].to_f
      expense = Expense.find(transaction_params[:id])
      expense.update(category: expenses_params[:category], budget: expenses_params[:budget])
      expense.save
      render json: @current_user.expenses.order(budget: :desc).to_json
    end
  end

  def destroy
    if logged_in?
      expense = Expense.find(expense_params[:id])
      expense.destroy
      render json: @current_user.expenses.order(budget: :desc).to_json
    end
  end

  private

  def expense_params
    params.require(:transaction).permit(:category, :budget, :id)
  end
end

end
end
