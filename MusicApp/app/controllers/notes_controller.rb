class NotesController < ApplicationController

    def create
        @note = Note.new(note_params)
        @note.user_id = current_user.id
        @note.save
        redirect_to track_url(@note.track_id)
    end

    def edit
        @note = Note.find(params[:id])
        render :edit
    end

    def update
        @note = Note.find(params[:id])
        if @note.update(note_params)
            redirect_to track_url(@note.track_id)
        else
            flash.now[:errors] = @note.errors.full_messages
            render :edit
        end
    end

    def destroy
        @note = Note.find(params[:id])
        @note.destroy
        redirect_to track_url(@note.track_id)
    end

    private
    def note_params
        params.require(:note).permit(:body, :track_id)
    end

end