module AuthorizationHelper

  def logged_in_user
    if session[:user_id]
      @logged_in_user ||= User.find(session[:user_id])
    else
      nil
    end
  end


end
