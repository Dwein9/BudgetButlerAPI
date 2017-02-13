class UsersController < ApplicationController

  def create
    @user = User.new(user_pamas)
    if @user.save
      jwt = Auth.encrypt({user_id: @user.id})
      render json: {jwt: jwt, @user.name}
  end

  private

  def user_params
    params.permit(:name, :email, :password, :password_confirmation)
  end

end
