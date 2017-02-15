module Api
  module V1

class TransactionsController < ApplicationController

  def index
    render json: User.first.transactions.order(day: :desc).to_json
  end

  def create
    value = transaction_params[:value].to_i
    transaction = Tranction.new(name: transaction_params[:name], day: transaction_params[:day], value: value, expense_id: 1)
    transaction.user = current_user
    transaction.save
    render json: User.first.transactions.order(day: :desc).to_json
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :value, :day, user_id: 1)
  end

end

  end
end
