class UsersController < ApplicationController
  before_action :logged_in_user, only: [:edit, :update, :index, :create, :new]
  before_action :admin_required, only: [:edit, :update, :index, :create, :new]
  def show
    @user = User.find(params[:id])
  end

  def index
    @users= User.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end

  def edit
  end

  def create
    @user = User.new(user_params)
    if @user.save
      log_in @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy
    flash[:success] = "Deleted #{@user.first_name}"
    redirect_to users_url
  end
  
  private

  def user_params
    params.require(:user).permit(
      :first_name, :last_name, :email, 
      :password, :password_confirmation, :image
    )
  end

  def logged_in_user
      unless logged_in?
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
