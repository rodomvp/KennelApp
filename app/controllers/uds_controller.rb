class UdsController < ApplicationController

	def create
		@patient = Patient.find(params[:id])
   		@ud = @patient.uds.build(ud_params)
    	if @ud.save
      		flash[:success] = "Note created!"
      		redirect_to :back
   		end
	end

	private

    def ud_params
      params.require(:ud).permit(:u1, :u2, :u3, :u4, :d1, :d2, :d3, :d4)
    end




end
