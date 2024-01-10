# app/controllers/tracks_controller.rb

class TracksController < ApplicationController
  before_action :set_track, only: [:show, :edit, :update, :destroy]

  def index
    @tracks = Track.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tracks }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @track }
    end
  end

  def new
    @track = Track.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @track }
    end
  end

  def create
    @track = Track.new(track_params)
    if @track.save
      respond_to do |format|
        format.html { redirect_to @track, notice: 'Track creado exitosamente.' }
        format.json { render json: @track, status: :created, location: @track }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @track.update(track_params)
      respond_to do |format|
        format.html { redirect_to @track, notice: 'Track actualizado exitosamente.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @track.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @track.destroy
    respond_to do |format|
      format.html { redirect_to tracks_url, notice: 'Track eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  def set_track
    @track = Track.find(params[:id])
  end

  def track_params
    params.require(:track).permit(:title, :artist_id, :release_id, :other_attributes)
  end
end
