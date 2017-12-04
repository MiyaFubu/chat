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
    binding.pry
    @user.password_digest = @user.encrypt(user_params[:password_digest])
    binding.pry
    @user.save!
    binding.pry
    redirect_to @user
  end

  private
    def user_params
      params.require(:user).permit(:name,:password_digest)
    end


end
