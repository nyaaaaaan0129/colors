class WantsController < ApplicationController

  def index
  	@wants = Want.all
  end

  def show
  	@want = Want.find(params[:id])
  end

  def new
  end

  private

  def want_params
  	params.require(:want).permit(:user_id, :brand_id, :genre_id, :color_genre_id, :product_name, :explanation)
  end
end
