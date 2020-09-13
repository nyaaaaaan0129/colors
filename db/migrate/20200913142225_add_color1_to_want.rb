class AddColor1ToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :color1, :string
  end
end
