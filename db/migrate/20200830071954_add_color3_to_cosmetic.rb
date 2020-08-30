class AddColor3ToCosmetic < ActiveRecord::Migration[5.2]
  def change
    add_column :cosmetics, :color3, :string
  end
end
