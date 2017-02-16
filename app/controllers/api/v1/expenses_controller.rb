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
      expense = Expense.new(category: expense_params[:category], budget: expense_params[:budget])
      expense.user = current_user
      expense.save
      render json: @current_user.expenses.order(budget: :desc).to_json
    end
  end

  def update
    if logged_in?
      value = expense_params[:value].to_f
      expense = Expense.find(expense_params[:id])
      expense.update(category: expense_params[:category], budget: expense_params[:budget])
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
    params.require(:expense).permit(:category, :budget, :id)
  end
end

end
end
