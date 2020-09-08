class RemoveBrandNameFromCosmetic < ActiveRecord::Migration[5.2]
  def change
    remove_column :cosmetics, :brand_name, :string
  end
end
