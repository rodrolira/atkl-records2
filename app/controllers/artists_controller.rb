# app/controllers/artists_controller.rb

class ArtistsController < ApplicationController
  before_action :set_artist, only: [:show, :edit, :update, :destroy]

  def index
    @artists = Artist.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @artists }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @artist }
    end
  end

  def new
    @artist = Artist.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @artist }
    end
  end

  def create
    @artist = Artist.new(artist_params)
    if @artist.save
      respond_to do |format|
        format.html { redirect_to @artist, notice: 'Artista creado exitosamente.' }
        format.json { render json: @artist, status: :created, location: @artist }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @artist.update(artist_params)
      respond_to do |format|
        format.html { redirect_to @artist, notice: 'Artista actualizado exitosamente.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: 'Artista eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :profession, :profile_picture)
  end
end
