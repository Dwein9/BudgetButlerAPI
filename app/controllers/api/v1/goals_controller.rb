module Api
  module V1

class GoalsController < ApplicationController

  def index
    render json: User.first.goals.to_json
  end

end

end
end
