class AddExplanationToCosmetic < ActiveRecord::Migration[5.2]
  def change
    add_column :cosmetics, :explanation, :string
  end
end
