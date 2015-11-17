class OwnersController < ApplicationController
  def new
  end

  def show
    @owner = Owner.find(params[:id])
    @patients = @owner.patients.paginate(page: params[:page])
  end

  def index
    #@owners = Owner.all
    @owners = Owner.paginate(page: params[:page])
  end
end
