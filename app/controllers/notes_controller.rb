class NotesController < ApplicationController

  def create
    @note = @current_patient.notes.build(params[:id])
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

