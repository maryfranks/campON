class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  helper_method :current_user, :logged_in?


   private
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

  def authorize
    session[:redirect] = request.original_url
    redirect_to new_session_path unless current_user
  end

  def user_id
    @user = current_user[:id]
  end

end
