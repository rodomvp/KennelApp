class PatientsController < ApplicationController
  before_filter :login_required, :only => [:show, :new, :index, :create]
  before_action :admin_required, :only => [:destroy]
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
    @patients = Patient.search(params[:search]).order(has_current_stay: :asc).
      paginate(:per_page => 16, :page => params[:page])

    if @patients.count == 1
      redirect_to @patients.first
    end
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
    else
      redirect_to @patient
    end
  end

  # Edit the params of patient
  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update_attributes(patient_params)
      # Handle a successful update.
      flash[:success] = "Profile updated"
      redirect_to @patient
    else
      render 'edit'
    end
  end

  def destroy
    @patient = Patient.find(params[:id])

    if @patient.has_current_stay
      @runn = @patient.current_stay.runn
      @runn.occupied = false
      @runn.save
    end

    @patient = Patient.find(params[:id]).destroy

    flash[:success] = "Deleted #{@patient.name}"
    redirect_to patients_url
  end

  private

  def patient_params
    params.require(:patient).permit(
      :name, :breed,
      :weight, :diet, :feeds_per_day, :int, :feed_time, :image, :npo
    )
  end
end
