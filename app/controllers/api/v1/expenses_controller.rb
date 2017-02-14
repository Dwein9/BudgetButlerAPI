module Api
  module V1

class ExpensesController < ApplicationController

  def index
    render json: User.first.expenses.to_json
  end

end

end
end
