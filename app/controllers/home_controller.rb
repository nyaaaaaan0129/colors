class HomeController < ApplicationController
before_action :authenticate_user!, only: [:top]

  def about
  end

  
  def top
  	@cosmetics = Cosmetic.order(id: :desc).limit(4)
  end
end
