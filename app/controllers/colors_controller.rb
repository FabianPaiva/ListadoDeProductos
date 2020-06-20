class ColorsController < ApplicationController
  def index
    @get_colors_list = Color.search(params[:term], params[:page])
  end

  def new
    @color = Color.new
  end

  def edit
    @edit_color = Color.find(params[:id])
  end

  def update
    @update_color = Color.find(params[:id])
    if @update_color.update(color_params)
      redirect_to colors_path
    else
      render :edit
    end
  end

  def create
    @color = Color.new(color_params)
    if @color.save
      redirect_to colors_path
    else
      render :new
    end
  end

  private
  def color_params
    params.require(:color).permit(:color_name)
  end
end
