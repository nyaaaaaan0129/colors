class ColorGenresController < ApplicationController
	def new
		@color_genre = ColorGenre.new
		@color_genres = ColorGenre.all
	end

	def create
		@color_genre = ColorGenre.new(color_genre_params)
		@color_genre.save
		redirect_to new_color_genre_path
	end

    private

  def color_genre_params
	params.require(:color_genre).permit(:name)
  end
end
