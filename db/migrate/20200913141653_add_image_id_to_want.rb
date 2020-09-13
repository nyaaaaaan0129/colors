class AddImageIdToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :image_id, :string
  end
end
