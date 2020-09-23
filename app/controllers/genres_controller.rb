class GenresController < ApplicationController
	before_action :authenticate_user!
	def new
		@genre = Genre.new
		@genres = Genre.all
	end

	def create
		@genre = Genre.new(genre_params)
		@genre.save
		redirect_to new_genre_path
	end

  private

  def genre_params
	params.require(:genre).permit(:name)
  end
end
