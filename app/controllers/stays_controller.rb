class StaysController < ApplicationController
  def new
  	if params[:id].present?
      @patient = Patient.find(params[:id])
      @stay = @patient.stays.new
    end
  end

  def show
  	if params[:id].present?
      @stay = Stay.find(params[:id])
      @patient = @stay.patient
    else
      @stay = Stay.find(params[:id])
      @patient = @stay.patient
    end
  end

  def index
  	if params[:id].present?
      @patient = Patient.find(params[:id])
      @stay = @patient.stay.paginate(page: params[:page])
    else
      @stay = Patient.paginate(page: params[:page])
    end
  end

  def destroy

    @stay = Stay.find(params[:id]).destroy
    
    @runn = Runn.find_by_id(@stay.runn_id)
    @runn.occupied = false
    @runn.save

    @patient = Patient.find(@stay.patient_id)
    @patient.has_current_stay = false
    @patient.save

    

    flash[:success] = "Checked out #{@patient.name}"
    redirect_to patients_url
  end

  def create
    if params[:id].present?
      @patient = Patient.find(params[:id])
      @stay = @patient.stays.build(stay_params)
      @stay.is_current = true 
      @patient.has_current_stay = true   
      @patient.save
    else
      @stay = Stays.new(stay_params)
    end
    if @stay.save
      redirect_to @patient
    end
  end

  private

  def stay_params
    params.require(:stay).permit(
      :belongings, :remarks, :runn_id)
  end

end
