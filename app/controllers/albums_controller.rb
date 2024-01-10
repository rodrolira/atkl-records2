# app/controllers/albums_controller.rb

class AlbumsController < ApplicationController
  before_action :set_album, only: [:show, :edit, :update, :destroy]

  def index
    @albums = Album.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @albums }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @album }
    end
  end

  def new
    @album = Album.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @album }
    end
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      respond_to do |format|
        format.html { redirect_to @album, notice: 'Álbum creado exitosamente.' }
        format.json { render json: @album, status: :created, location: @album }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @album.update(album_params)
      respond_to do |format|
        format.html { redirect_to @album, notice: 'Álbum actualizado exitosamente.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @album.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @album.destroy
    respond_to do |format|
      format.html { redirect_to albums_url, notice: 'Álbum eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  def set_album
    @album = Album.find(params[:id])
  end

  def album_params
    params.require(:album).permit(:title, :artist_id, :release_date, :other_attributes)
  end
end
