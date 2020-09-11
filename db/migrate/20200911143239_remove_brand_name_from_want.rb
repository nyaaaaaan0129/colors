class RemoveBrandNameFromWant < ActiveRecord::Migration[5.2]
  def change
    remove_column :wants, :brand_name, :string
  end
end
