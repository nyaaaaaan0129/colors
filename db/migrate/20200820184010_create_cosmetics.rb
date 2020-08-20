class CreateCosmetics < ActiveRecord::Migration[5.2]
  def change
    create_table :cosmetics do |t|
      t.integer :user_id
      t.integer :genre_id
      t.string :brand_name
      t.string :product_name
      t.string :color1
      t.string :color2
      t.string :color
      t.string :color4

      t.timestamps
    end
  end
end
