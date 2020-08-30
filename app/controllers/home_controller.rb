class HomeController < ApplicationController
  def top
  	@cosmetics = Cosmetic.all
  end
end
