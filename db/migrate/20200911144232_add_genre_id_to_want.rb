class AddGenreIdToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :genre_id, :integer
  end
end
