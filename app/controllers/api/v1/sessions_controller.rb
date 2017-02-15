class Api::V1::SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:email])
    if @user && @user.authenticate(params[:password])
      jwt = Auth.issue({user_id: user.id})
      render json: {jwt: jwt}
    end
  end

end
