module ApplicationHelper
  # users = User.all
  def logged_in?
    !!session[:user_name]
  end
  def current_user
    @current_user ||= User.find_by(session[:user_name]) if !!session[:user_name]
  end
end
