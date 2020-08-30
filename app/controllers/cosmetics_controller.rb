class CosmeticsController < ApplicationController

  def index
  end

  def new
    @cosme = Cosmetic.new
  end

  def create
    @cosme = Cosmetic.new(cosmetic_params)
    @cosme.user_id = current_user.id
    @cosme.save!
    redirect_to root_path
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def cosmetic_params
    params.require(:cosmetic).permit(:user_id, :genre_id, :brand_name, :product_name, :color1, :color2, :color3, :color4, :image)
  end
end