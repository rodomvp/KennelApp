class PatientsController < ApplicationController
  def new
  end

  def show
    @patient = Patient.find(params[:id])
    @owner = @patient.owner
  end

  def index
    @patients = Patient.paginate(page: params[:page])
  end
end
