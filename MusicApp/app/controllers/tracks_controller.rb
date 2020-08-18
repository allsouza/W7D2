class TracksController < ApplicationController
    before_action :ensure_login
    
    def new
        @track = Track.new
        render :new
    end

    def create
        @track = Track.new(track_params)
        if @track.save
            redirect_to album_url(@track.album_id)
        else
            flash.now[:errors] = @track.errors.full_messages
            render :new
        end
    end

    def show
        @track = Track.where(id: params[:id]).includes(:band).first
        render :show
    end

    def edit
        @track = Track.find(params[:id])
        render :edit
    end

    def update
        @track = Track.find(params[:id])
        if @track.update(track_params)
            redirect_to track_url(@track.id)
        else
            flash.now[:errors] = @track.errors.full_messages
            render :edit
        end
    end

    def destroy
        @track = Track.find(params[:id])
        @track.destroy
        redirect_to album_url(@track.album_id)
    end

    private
    def track_params
        params.require(:track).permit(:album_id, :title, :ord, :lyrics, :bonus)
    end

end