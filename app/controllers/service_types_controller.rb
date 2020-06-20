class ServiceTypesController < ApplicationController
  def index
    @get_service_types_list = ServiceType.search(params[:term], params[:page])
  end

  def new
    @service_types_new = ServiceType.new
  end

  def create
    @service_types_new = ServiceType.new(service_types_params)
    if @service_types_new.save
      redirect_to serviceTypes_path
    else
      render :new
    end
  end

  def edit
    @edit_service_type = ServiceType.find(params[:id])
  end

  def update
    @update_service_type = ServiceType.find(params[:id])
    if @update_service_type.update(service_types_params)
      redirect_to serviceTypes_path
    else
      render :edit
    end
  end

  private
   def service_types_params
     params.require(:service_type).permit(:service_type_name)
   end

end
