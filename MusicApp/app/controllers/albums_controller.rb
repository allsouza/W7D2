class AlbumsController < ApplicationController
    before_action :ensure_login
    
    def new
        @album = Album.new
        render :new
    end

    def show
        @album = Album.where(id: params[:id]).includes(:tracks).first
        render :show
    end

    def create
        @album = Album.new(album_params)
        if @album.save
            redirect_to album_url(@album.id)
        else
            flash.now[:errors] = @album.errors.full_messages
            render :new
        end
    end

    def edit
        @album = Album.find_by(id: params[:id])
        render :edit
    end

    def update
        @album = Album.find(params[:id])
        if @album.update(album_params)
            redirect_to band_url(@album.band_id)
        else
            flash.now[:errors] = @album.errors.full_messages
            render :edit
        end
    end

    def destroy
        @album = Album.find(params[:id])
        @album.destroy
        redirect_to band_url(@album.band_id) 
    end

    private
    def album_params
        params.require(:album).permit(:title, :year, :studio, :band_id)
    end

end