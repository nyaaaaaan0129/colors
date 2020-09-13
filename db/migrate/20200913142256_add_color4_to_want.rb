class AddColor4ToWant < ActiveRecord::Migration[5.2]
  def change
    add_column :wants, :color4, :string
  end
end
