class StaticPagesController < ApplicationController
  def home
  	redirect_to ward_view_path if logged_in?
  end

  def documentation
  end
end
