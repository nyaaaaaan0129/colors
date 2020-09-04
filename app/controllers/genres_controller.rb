class GenresController < ApplicationController
	def new
		@genre = Genre.new
		@genres = Genre.all
	end

	def create
		@genre = Genre.new(genre_params)
		@genre.save
	end

  private

  def genre_params
	params.require(:genre).permit(:name)
  end
end
