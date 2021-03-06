class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def index
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    @user.password_digest = @user.encrypt(user_params[:password_digest])
    @user.save!
    redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:name,:password_digest)
    end


end
