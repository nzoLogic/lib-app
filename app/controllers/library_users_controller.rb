class LibraryUsersController < ApplicationController

  def index
    @user = User.find_by_id(params[:id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:library_id])
    @library.users << current_user

    redirect_to current_user
  end
end
