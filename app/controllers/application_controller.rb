class ApplicationController < ActionController::API

  def current_user
    if auth_present
      user = User.find(auth["user_id"])
      if user
        @current_user ||= user
      end
    end
  end

  def logged_in?
    token != "null" && !!current_user
  end

  def authenticate
    render json: {error: "unauthorized"}, status: 401 if !logged_in?
  end

  def auth_present
    !!request.headers['HTTP_AUTHORIZATION']
  end

    private

  def auth
    Auth.decode(token)
  end


  def token
    request.headers['HTTP_AUTHORIZATION']
  end

end
