module SessionsHelper

  def current_user
    return nil unless session[:session_token]

    User.find_by_session_token(session[:session_token])
  end

  def current_user=(user)
    @current_user = user
    session[:session_token] = user.session_token
  end

end
