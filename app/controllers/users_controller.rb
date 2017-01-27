class UsersController < ApplicationController
  #all users
  def index
    @users = User.all
  end

  #new user
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to users_path
    else
      redirect_to new_user
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end
end
