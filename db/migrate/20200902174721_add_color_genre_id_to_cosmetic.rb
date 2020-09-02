class AddColorGenreIdToCosmetic < ActiveRecord::Migration[5.2]
  def change
    add_column :cosmetics, :color_genre_id, :string
  end
end
