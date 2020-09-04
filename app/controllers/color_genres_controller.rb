class ColorGenresController < ApplicationController
	def new
		@color_genre = ColorGenre.new
		@color_genres = ColorGenre.all
	end

    private

  def color_genre_params
	params.require(:color_genre).permit(:name)
  end
end
