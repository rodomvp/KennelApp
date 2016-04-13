class ApplicationController < ActionController::Base
  def login_required
  	flash[:danger] = "Please log in to access this page"
    redirect_to login_url
  end
  protect_from_forgery with: :exception
  include SessionsHelper
end