class AddColorGenreIdToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :color_genre_id, :integer
  end
end
