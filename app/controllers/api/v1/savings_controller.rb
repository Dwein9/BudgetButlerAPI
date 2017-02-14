module Api
  module V1

class SavingsController < ApplicationController
  def index
    render json: User.first.savings.to_json
  end
end

end
end
