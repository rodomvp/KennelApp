class OwnersController < ApplicationController
  def new
    @owner = Owner.new
  end

  def show
    @owner = Owner.find(params[:id])
    @patients = @owner.patients.paginate(page: params[:page])
  end

  def index
    #@owners = Owner.all
    @owners = Owner.paginate(page: params[:page])
  end

  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      redirect_to @owner
    else
      render 'new'
    end
  end



  private

    def owner_params
      params.require(:owner).permit(:first_name, :last_name, :email, :phone_number)
    end   
end
