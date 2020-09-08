class AddBrandIdToCosmetic < ActiveRecord::Migration[5.2]
  def change
    add_column :cosmetics, :brand_id, :integer
  end
end
