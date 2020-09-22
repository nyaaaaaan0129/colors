class WantsController < ApplicationController

  def index
  	@wants = Want.all
  end

  def show
  	@want = Want.find(params[:id])
  end

  def new
    @want = Want.new
  end

  def create
    @want = Want.new(want_params)
    @want.user_id = current_user.id
    @want.save!
    redirect_to wants_path
  end

  def edit
    @want = Want.find(params[:id])
  end

  def update
    @want = Want.find(params[:id])
    @want.update(want_params)
    redirect_to want_path(@want)
  end

  def destroy
    @want = Want.find(params[:id])
    @want.destroy
    redirect_to wants_path
  end

  private

  def want_params
  	params.require(:want).permit(:user_id, :image, :brand_id, :genre_id, :color_genre_id, :product_name, :color1, :color2, :color3, :color4, :explanation)
  end
end
