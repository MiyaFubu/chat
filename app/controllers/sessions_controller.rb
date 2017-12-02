class SessionsController < ApplicationController
  before_action :set_user, only: [:create]
  def new
  end

  def create
    # authenticate

    if authenticate(@user, session_params[:pass]) then
      binding.pry
      puts params[:pass]
      binding.pry
      session[:user_id] = @user.id
      return redirect_to '/'
    else
      flash.now[:danger] = 'login失敗'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    return redirect_to '/login'
  end

  private

  def set_user
    @user = User.find_by!(name: session_params[:name])
    rescue
      render action: 'new'
  end

  def session_params
    params.require(:session).permit(:name, :password_digest)
  end

  def authenticate(user, password)
    binding.pry
    user.password_digest == user.encrypt(password)
  end

end
