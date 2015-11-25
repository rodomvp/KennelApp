class StaticPagesController < ApplicationController
  def home
  	redirect_to all_patients_path if logged_in?		
  end

  def documentation
  end
end
