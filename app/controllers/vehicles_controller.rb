class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.search(params[:term],params[:page])
  end

  def new
    @vehicle = Vehicle.new
  end

  def edit
    @vehicle = Vehicle.find(params[:id])
  end

  def update
    @vehicle = Vehicle.find(params[:id])

    if @vehicle.update(vehicle_params)
      redirect_to vehicles_path
    else
      render :edit
    end
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    if @vehicle.save
      redirect_to vehicles_path
    else
      render :new
    end
  end

  private
  def vehicle_params
    params.require(:vehicle).permit(:patent_number, :chassis_number, :vehicle_models_id, :colors_id, :clients_id)
  end
end
