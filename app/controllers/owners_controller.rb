class OwnersController < ApplicationController

  # Show a new owner form (Using views/owners/new.html.erb)
  def new
    @owner = Owner.new
  end

  # Show a owner profile by id (Using views/owners/show.html.erb)
  def show
    @owner = Owner.find(params[:id])
    @patients = @owner.patients.paginate(page: params[:page])
  end

  # Return a listing of all owners (Using views/owners/index.html.erb)
  def index
    @owners = Owner.search(params[:search]).paginate(:per_page => 25, :page => params[:page])
  end

  def destroy
    @owner = Owner.find(params[:id]).destroy
    flash[:success] = "Deleted #{@owner.first_name}"
    redirect_to owners_url
  end

  # Use owner_params to create a new owner
  def create
    @owner = Owner.new(owner_params)
    if @owner.save
      # Redirect to new owner profile
      redirect_to @owner
    else
      # Render a new owner form 
      render 'new_owner'
    end
  end

  private

  def owner_params
    params.require(:owner).permit(
      :first_name, :last_name, :email, :phone_number
    )
  end 
end
