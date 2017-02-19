module Api
  module V1

class IncomesController < ApplicationController

  def index
    render json: User.first.incomes.to_json
  end

   def create
    if logged_in?
      value = income_params[:value].to_f
      income = Income.new(name: income_params[:name], amount: income_params[:amount])
      income.user = current_user
      income.save
      render json: @current_user.incomes.order(amount: :desc).to_json
    end
  end

  def update
    if logged_in?
      value = income_params[:value].to_f
      income = Income.find(income_params[:id])
      income.update(name: income_params[:name], amount: income_params[:amount])
      income.save
      render json: @current_user.incomes.order(amount: :desc).to_json
    end
  end

  def destroy
    if logged_in?
      income = Income.find(params[:id])
      income.destroy
      render json: @current_user.incomes.order(amount: :desc).to_json
    end
  end

  private

  def income_params
    params.require(:income).permit(:name, :amount, :id)
  end

end

end
end
