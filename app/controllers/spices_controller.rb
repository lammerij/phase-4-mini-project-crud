class SpicesController < ApplicationController

  # GET

  def index
    spice = Spice.all
    render json: spice
  end

  # POST
  def create
    spice = Spice.create(spice_params)
    render json: spice, status: :created
  end

  # PATCH

  def update
    spice = Spice.find_by(id: params[:id])
    spice.update(spice_params)
    render json: spice
  end   

  #DELETE

  def destroy
    spice = Spice.find_by(id: params[:id])
    spice.destroy
  end

  private

  def spice_params
    params.permit(:title, :image, :description, :notes, :rating)
  end
end
