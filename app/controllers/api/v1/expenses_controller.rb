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
      value = expense_params[:budget].to_f
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
    params.require(:expense).permit(:category, :budget, :id, :misc)
  end
end

end
end
