# frozen_string_literal: true

# app/controllers/artists_controller.rb

class ArtistsController < ApplicationController # rubocop:disable Style/Documentation
  before_action :set_artist, only: %i[show edit update destroy]

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
    artist = Artist.new(artist_params)
    artist.biography = params[:artist][:biography]

    if artist.save
      render_success(artist)
    else
      render_failure(artist)
    end
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      redirect_to @artist, notice: "Artista actualizado exitosamente."
    else
      render :edit
    end
  end

  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: "Artista eliminado exitosamente." }
      format.json { head :no_content }
    end
  end

  private

  def set_artist
    @artist = Artist.find(params[:id])
  end

  def artist_params
    params.require(:artist).permit(:name, :profession, :profile_picture, :biography)
  end
end
