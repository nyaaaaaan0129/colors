class RemoveColorsFromCosmetic < ActiveRecord::Migration[5.2]
  def change
    remove_column :cosmetics, :color, :string
  end
end
