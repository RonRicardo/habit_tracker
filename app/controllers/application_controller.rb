class ApplicationController < ActionController::Base
  skip_before_action :verify_authenticity_token
  # helper_method :logged_in?, :current_user
  # before_action :logged_in?
  #
  # def current_user
  #   if session[:user_id]
  #     @user = User.find(session[:user_id])
  #   end
  # end
  #
  # def authorized
  #   redirect_to login_path unless logged_in?
  # end
  #
  # def logged_in?
  #   !!current_user
  # end
end
