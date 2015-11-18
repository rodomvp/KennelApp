class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
  end

  def index
    @users= User.paginate(page: params[:page])
  end

  def new
  end
end