class PatientsController < ApplicationController
  def new
    if params[:id].present?
      @owner = Owner.find(params[:id])
      @patient = @owner.patients.new
    else
      @patient = Patient.new
    end
  end

  def show
    if params[:id].present?
      @patient = Patient.find(params[:id])
      @owner = @patient.owner
    else
      @patient = Patient.find(params[:id])
      @owner = @patient.owner
    end
  end


  def index
    if params[:id].present?
      @owner = Owner.find(params[:id])
      @patients = @owner.patients.paginate(page: params[:page])
    else
      @patients = Patient.paginate(page: params[:page])
    end
  end

  def create
    if params[:id].present?
      @owner = Owner.find(params[:id])
      @patient = @owner.patients.build(patient_params)      
      params[:last_name] = @owner.last_name
    else
      @patient = Patient.new(patient_params)
    end
    if @patient.save
      redirect_to @patient
    else
      render 'new_patient'
    end
  end

  private

  def patient_params
    params.require(:patient).permit(
      :name, :breed,
      :weight, :belongings,
      :diet, :feed_time
    )
  end
end
