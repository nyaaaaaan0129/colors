class CosmeticsController < ApplicationController


  def index
    if params[:key] >= "1"
      @cosmetics = Cosmetic.where(genre_id: params[:key])
    else
      @cosmetics = Cosmetic.all
    end
    @genres = Genre.pluck(:id, :name)
  end

  def new
    @cosme = Cosmetic.new
    @color_genres = ColorGenre.all
    @genres = Genre.all
    @brands = Brand.all
  end

  def create
    @cosme = Cosmetic.new(cosmetic_params)
    @cosme.user_id = current_user.id
    @cosme.save!
    redirect_to root_path
  end

  def show
    @cosme = Cosmetic.find(params[:id])
  end

  def edit
    @cosme = Cosmetic.find(params[:id])
    @color_genres = ColorGenre.all
    @genres = Genre.all
  end

  def update
    @cosme = Cosmetic.find(params[:id])
    @cosme.update(cosmetic_params)
    redirect_to cosmetic_path
  end

  def destroy
    @post = Cosmetic.find(params[:id])
    @post.destroy
    redirect_to cosmetics_path(key:0)
  end

  def expired
    expired = Date.toda - 1.years
    @cosmetics = Cosmetic.where(created_at: < expired)
  end

  private

  def cosmetic_params
    params.require(:cosmetic).permit(:user_id, :brand_id, :color_genre_id, :genre_id, :brand_name, :product_name, :color1, :color2, :color3, :color4, :image)
  end
end