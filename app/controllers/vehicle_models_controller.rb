class VehicleModelsController < ApplicationController
  def index
    @get_vehicle_models = VehicleModel.search(params[:term],params[:page])
  end
  def new
    @vehicle_model = VehicleModel.new
  end

  def edit
    @edit_vehicle_model = VehicleModel.find(params[:id])
  end

  def update
    @update_position = VehicleModel.find(params[:id])
    if @update_position.update(vehicle_model_params)
      redirect_to vehicleModels_path
    else
      render :edit
    end
  end

  def create
    @vehicle_model = VehicleModel.new(vehicle_model_params)
    if @vehicle_model.save
      redirect_to vehicleModels_path
    else
      render :new
    end
  end

  private

  def vehicle_model_params
    params.require(:vehicle_model).permit(:vehicle_model_name, :year_of_production, :brand_id)
  end
end
