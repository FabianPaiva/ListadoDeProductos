class BrandsController < ApplicationController
  def index
    @get_brands_list = Brand.search(params[:term], params[:page])
  end

  def new
    @brand_new = Brand.new
  end

  def edit
    @edit_brand = Brand.find(params[:id])
  end

  def update
    @brand_update = Brand.find(params[:id])
    if @brand_update.update(brand_params)
      redirect_to brands_path
    else
      render :edit
    end
  end

  def create
    @brand_new = Brand.new(brand_params)
    if @brand_new.save
      redirect_to brands_path
    else
      render :new
    end
  end

  private
  def brand_params
    params.require(:brand).permit(:brand_name)
  end
end
