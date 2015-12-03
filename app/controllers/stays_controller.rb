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

  def create
    if params[:id].present?
      @patient = Patient.find(params[:id])
      @stay = @patient.stays.build(stay_params)
      @stay.is_current = true
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
