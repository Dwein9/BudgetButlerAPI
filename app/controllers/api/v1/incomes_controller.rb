module Api
  module V1

class IncomesController < ApplicationController

  def index
    render json: User.first.incomes.to_json
  end

end

end
end
