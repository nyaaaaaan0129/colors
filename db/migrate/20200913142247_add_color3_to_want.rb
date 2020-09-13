class AddColor3ToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :color3, :string
  end
end
