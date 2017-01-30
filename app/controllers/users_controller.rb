class UsersController < ApplicationController

  before_action :require_login, only: [:show]
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
      login(@user)
      redirect_to @user
    else
      flash[:login_error] = "invalid email or password. try again"
      redirect_to new_user
    end
  end

  def show
    @user = User.find_by_id(params[:id])
    render :show
  end

  private
  def user_params
    params.require(:user).permit(:email, :first_name, :last_name, :password)
  end
end
