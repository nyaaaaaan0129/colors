class AddBrandIdToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :brand_id, :integer
  end
end
