class PatientsController < ApplicationController
  before_filter :login_required, :only => [:show, :new, :index, :create]
  # Show a new patient form (Using views/patients/new.html.erb)
  def new
    if params[:id].present?
      @owner = Owner.find(params[:id])
      @patient = @owner.patients.new
    else
      @patient = Patient.new
    end
  end

  # Show a patient profile by id (Using views/patients/show.html.erb)
  def show
    if params[:id].present?
      @patient = Patient.find(params[:id])
      @owner = @patient.owner
    else
      @patient = Patient.find(params[:id])
      @owner = @patient.owner
    end
  end

  # Return a listing of all patients (Using views/patients/index.html.erb)
  def index
      @patients = Patient.search(params[:search]).order(:name).paginate(page: params[:page])
  end

  # Use patient_params to create a new patient
  def create
    if params[:id].present?
      @owner = Owner.find(params[:id])
      @patient = @owner.patients.build(patient_params)
      params[:last_name] = @owner.last_name
    else
      @patient = Patient.new(patient_params)
    end
    if @patient.save
      # Redirect to new patient profile
      redirect_to @patient
    end
  end

  private

  def patient_params
    params.require(:patient).permit(
      :name, :breed,
      :weight, :diet, :feeds_per_day, :int, :feed_time
    )
  end
end
