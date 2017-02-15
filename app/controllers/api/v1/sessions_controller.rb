class Api::V1::SessionsController < ApplicationController

  def create
    binding.pry
    @user = User.find_by(email: session_params[:email])
    if @user && @user.authenticate(session_params[:password])
      jwt = Auth.encrypt({user_id: @user.id})
      render json: {jwt: jwt}
    else
      render json: {message: "Incorrect Email or Password", status_code: 422}
    end
  end

  def session_params
    params.require(:user).permit(:email, :password)
  end

end
