class CreateColorGenres < ActiveRecord::Migration[5.2]
  def change
    create_table :color_genres do |t|
      
      t.string "name"
      t.timestamps
    end
  end
end
