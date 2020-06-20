class ServicesController < ApplicationController
  def index
    @services = Service.search(params[:term], params[:page])
  end
  def new
    @service = Service.new
  end

  def edit
    @service = Service.find(params[:id])
  end

  def update
    @service = Service.find(params[:id])
    if @service.update(service_params)
      redirect_to services_path
    else
      render :edit
    end
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to services_path
    else
      render :new
    end
  end

  private
  def service_params
    params.require(:service).permit(:service_name, :price, :service_types_id)
  end
end
