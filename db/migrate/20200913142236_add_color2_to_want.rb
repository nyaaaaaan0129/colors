class AddColor2ToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :color2, :string
  end
end
