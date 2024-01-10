# app/controllers/eps_controller.rb

class EPsController < ApplicationController
  before_action :set_ep, only: [:show, :edit, :update, :destroy]

  def index
    @eps = EP.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @eps }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @ep }
    end
  end

  def new
    @ep = EP.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @ep }
    end
  end

  def create
    @ep = EP.new(ep_params)
    if @ep.save
      respond_to do |format|
        format.html { redirect_to @ep, notice: 'EP creado exitosamente.' }
        format.json { render json: @ep, status: :created, location: @ep }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @ep.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @ep.update(ep_params)
      respond_to do |format|
        format.html { redirect_to @ep, notice: 'EP actualizado exitosamente.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @ep.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ep.destroy
    respond_to do |format|
      format.html { redirect_to eps_url, notice: 'EP eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  def set_ep
    @ep = EP.find(params[:id])
  end

  def ep_params
    params.require(:ep).permit(:title, :artist_id, :release_date, :other_attributes)
  end
end
