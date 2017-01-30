class LibraryUsersController < ApplicationController

  def index
    @user = User.find_by_id(params[:id])
    @libraries = @user.libraries
  end

  def create
    @library = Library.find(params[:library_id])
    @library.users << current_user

    redirect_to user_libraries_path
  end
end
