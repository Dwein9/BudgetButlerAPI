require 'pry'
module Api
  module V1

class UsersController < ApplicationController

  def create
    @user = User.new(user_params)
    if @user.save
      Expense.create(category: "Misc", budget: 0, user_id: @user.id, misc: true)
      jwt = Auth.encrypt({user_id: @user.id})
      render json: {jwt: jwt}
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

end
end
end
