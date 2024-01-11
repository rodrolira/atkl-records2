# app/controllers/releases_controller.rb

class ReleasesController < ApplicationController
  before_action :set_release, only: [:show, :edit, :update, :destroy]
  before_action :require_admin, only: [:new, :create, :edit, :update, :destroy]


  def index
    @releases = Release.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @releases }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @release }
    end
  end

  def new
    @release = Release.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @release }
    end
  end

  def create
    @release = Release.new(release_params)

    if @release.save
      respond_to do |format|
        format.html { redirect_to @release, notice: 'Release creado exitosamente.' }
        format.json { render json: @release, status: :created, location: @release }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @release.update(release_params)
      respond_to do |format|
        format.html { redirect_to @release, notice: 'Lanzamiento actualizado exitosamente.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @release.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @release = Release.find(params[:id])
    @release.destroy
    redirect_to releases_path, notice: 'Release eliminado exitosamente.'


  end

  private

  def set_release
    @release = Release.find(params[:id])
  end

  def release_params
    params.require(:release).permit(:title, :catalogue, :artist_id, :bandcamp_embed_code)
  end
  
  def require_admin
    redirect_to root_path, alert: 'Solo los administradores pueden realizar esta acción.' unless current_admin_user
  end
end
