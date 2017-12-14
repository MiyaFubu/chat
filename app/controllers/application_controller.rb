class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
    if User.find_by(id: session[:user_id]).nil?
      # まだログインしていない
      return redirect_to '/login'
    end
  end

  def current_user
    User.find(session[:user_id])
  end



end
