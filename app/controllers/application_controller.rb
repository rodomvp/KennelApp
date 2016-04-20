class ApplicationController < ActionController::Base
  def login_required
  	if (!User.find_by_id(session[:user_id]))
  	redirect_to login_url 
  	flash[:danger] = "Please log in to access this page"
  	end
  end

  def admin_required
  	if (!User.find_by_id(session[:user_id]).admin?)
  		redirect_to ward_view_url
  		flash[:danger] = "Restricted to administrator access"
  	end
  end
  protect_from_forgery with: :exception
  include SessionsHelper
end