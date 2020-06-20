class OfficialsController < ApplicationController
  def index
    @officials = Official.search(params[:term], params[:page])
  end

  def new
    @official = Official.new
  end

  def edit
    @official = Official.find(params[:id])
  end

  def update
    @official = Official.find(params[:id])
    if @official.update(official_params)
      redirect_to officials_path
    else
      render :edit
    end
  end

  def create
    @official = Official.new(official_params)
    if @official.save
      redirect_to officials_path
    else
      render :new
    end
  end

  private
  def official_params
    params.require(:official).permit(:document_number, :first_name, :last_name, :telephone, :address, :gender, :civil_status, :birth_date, :limite_credito , :position_id)
  end
end
