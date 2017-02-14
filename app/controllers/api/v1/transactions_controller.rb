module Api
  module V1

class TransactionsController < ApplicationController

  def index
    render json: User.first.transactions.to_json
  end

end

  end
end
