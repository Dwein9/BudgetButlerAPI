module Api
  module V1

class TransactionsController < ApplicationController

  def index
    render json: User.first.transactions.to_json
  end

  def create
    value = transaction_params[:value].to_i
    Transaction.create(name: transaction_params[:name], day: transaction_params[:day], value: value, user_id: 1, expense_id: 1)
    render json: User.first.transactions.to_json
  end

  private

  def transaction_params
    params.require(:transaction).permit(:name, :value, :day, user_id: 1)
  end

end

  end
end
