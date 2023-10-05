class UsersController < ApplicationController
  before_action :is_matching_login_user, only: [:edit, :update]
  
  def index
    @users = User.all
  end
  
  def update
    @user 
  end

  def show
    @user = User.find(params[:id])
    @books = @user.books
  end

  def edit
    @user = User.find(params[:id])
  end
  
  private
    def user_params
     params.require(:user).permit(:name, :profile_image)
    end
end
