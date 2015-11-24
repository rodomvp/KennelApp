class PatientsController < ApplicationController
  def new
  	@patient = Patient.new
  end

  def show
    @patient = Patient.find(params[:id])
    @owner = @patient.owner
  end

  def index
    @patients = Patient.paginate(page: params[:page])
  end

  def create
  	@patient = Patient.new(patient_params)
  	if @patient.save
  		redirect_to @patient
  	else
  		render 'new_patient'
  	end
  end

  private

  def patient_params
  	params.require(:patient)
  end
end
