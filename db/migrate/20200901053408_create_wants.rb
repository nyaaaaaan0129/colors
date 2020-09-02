class CreateWants < ActiveRecord::Migration[5.2]
  def change
    create_table :wants do |t|


      t.integer "user_id"
      t.string "brand_name"
      t.string "product_name"
      t.string "explanation"
      t.timestamps
    end
  end
end
