class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    respond_to do |format|
      format.html # Esta línea debe ser eliminada si no necesitas una vista HTML
      format.json { render json: @artists }
    end
  end

  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to root_path, notice: "Artista creado exitosamente."
    else
      render :new
    end
  end

  private

  def artist_params
    params.require(:artist).permit(:name, :profile_picture, :profession)
  end
end
