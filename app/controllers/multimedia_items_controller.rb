# app/controllers/multimedia_items_controller.rb

class MultimediaItemsController < ApplicationController
  before_action :set_multimedia_item, only: [:show, :edit, :update, :destroy]

  def index
    @multimedia_items = MultimediaItem.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @multimedia_items }
    end
  end

  def show
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @multimedia_item }
    end
  end

  def new
    @multimedia_item = MultimediaItem.new
    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @multimedia_item }
    end
  end

  def create
    @multimedia_item = MultimediaItem.new(multimedia_item_params)
    if @multimedia_item.save
      respond_to do |format|
        format.html { redirect_to @multimedia_item, notice: 'Elemento multimedia creado exitosamente.' }
        format.json { render json: @multimedia_item, status: :created, location: @multimedia_item }
      end
    else
      respond_to do |format|
        format.html { render 'new' }
        format.json { render json: @multimedia_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def edit
  end

  def update
    if @multimedia_item.update(multimedia_item_params)
      respond_to do |format|
        format.html { redirect_to @multimedia_item, notice: 'Elemento multimedia actualizado exitosamente.' }
        format.json { head :no_content }
      end
    else
      respond_to do |format|
        format.html { render 'edit' }
        format.json { render json: @multimedia_item.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @multimedia_item.destroy
    respond_to do |format|
      format.html { redirect_to multimedia_items_url, notice: 'Elemento multimedia eliminado exitosamente.' }
      format.json { head :no_content }
    end
  end

  private

  def set_multimedia_item
    @multimedia_item = MultimediaItem.find(params[:id])
  end

  def multimedia_item_params
    params.require(:multimedia_item).permit(:title, :album_id, :image, :other_attributes)
  end
end
