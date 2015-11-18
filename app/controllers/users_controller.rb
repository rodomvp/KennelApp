class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users= User.paginate(page: params[:page])
  end

  def new
  end

  def create
    @user = User.new(user_params)    # Not the final implementation!
    if @user.save
      # Handle a successful save.
    else
      render 'new'
    end
  end

  def user_params
    params.require(:user).permit(:username, :email, :password, :salt, :encrypted_password)
  end
  
end

