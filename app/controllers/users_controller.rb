class UsersController < ApplicationController
  #all users
  def index
    @users = User.all
  end

  #new user
  def new
    @user = User.new
  end
end
