class NotesController < ApplicationController

  def create
    @patient = Patient.find(params[:id])
    @note = @patient.notes.build(params[:id])
    if @note.save
      flash[:success] = "Note created!"
      redirect_to :back
    end
  end

  def destroy
  end

  private

    def note_params
      params.require(:note).permit(:content)
    end
end

