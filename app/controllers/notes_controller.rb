class NotesController < ApplicationController

  def create
    @patient = Patient.find(params[:id])
    @note = @patient.notes.build(note_params)
    if @note.save
      flash[:success] = "Note Saved"
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

