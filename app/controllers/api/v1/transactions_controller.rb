module Api
  module V1

class TransactionsController < ApplicationController

  def index
    if logged_in?
      render json: @current_user.transactions.order(day: :desc).to_json
    end
  end

  def create
    if logged_in?
      value = transaction_params[:value].to_i
      transaction = Transaction.new(name: transaction_params[:name], day: transaction_params[:day], value: value, expense_id: 1)
      transaction.user = current_user
      transaction.save
      render json: @current_user.transactions.order(day: :desc).to_json
    end
  end

  def update
    if logged_in?
      value = transaction_params[:value].to_i
      transaction = Transaction.find(transaction_params[:id])
      transaction.update(name: transaction_params[:name], day: transaction_params[:day], value: value, expense_id: 1)
      transaction.save
      render json: @current_user.transactions.order(day: :desc).to_json
    end
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :value, :day, :id)
  end

end

  end
end
