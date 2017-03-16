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
      expense = Expense.new(category: expense_params[:category], budget: expense_params[:budget], month:convert_month(expense_params[:month]))
      expense.user = current_user
      expense.save

      selected_month = expense.month
      user_expense = Expense.where(user_id: @current_user)
      expense_month = user_expense.where('month = ?', selected_month)
      render json: expense_month.to_json
    end
  end

  def update
    if logged_in?
      expense = Expense.find(expense_params[:id])
      expense.update(category: expense_params[:category], budget: expense_params[:budget])
      expense.save
      render json: @current_user.expenses.order(budget: :desc).to_json
    end
  end

  def destroy
    if logged_in?
      expense = Expense.find(params[:id])
        if expense.misc == false
              default_to_misc = @current_user.transactions.where(expense_id: params[:id])
              misc = @current_user.expenses.where(misc: true)
              default_to_misc.map do |transaction|
                transaction.update(expense_id: misc[0].id)
              end
            expense.destroy
          render json: @current_user.expenses.order(budget: :desc).to_json
        else
          render json: @current_user.expenses.order(budget: :desc).to_json
        end
    end
  end

  private

  def expense_params
    params.require(:expense).permit(:category, :budget, :id, :misc, :month)
  end

  def convert_month(string_number)
    months = ["January", "February", "March", "April", "May", "June","July", "August", "September", "October", "November", "December"]
    return months[string_number.to_i]
  end  

end

end
end
