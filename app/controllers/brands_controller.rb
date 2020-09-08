class BrandsController < ApplicationController
  def new
    @brand = Brand.new
    @brands = Brand.all
  end

  def create
  	@brand = Brand.new(brand_params)
  	@brand.save
  	redirect_to new_brand_path
  end

  private

  def brand_params
	params.require(:brand).permit(:name)
  end
end
