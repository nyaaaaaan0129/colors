class HomeController < ApplicationController
  def top
  	@cosmetics = Cosmetic.order(id: :desc).limit(4)
  end
end
