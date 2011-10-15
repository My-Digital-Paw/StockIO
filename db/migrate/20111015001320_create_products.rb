class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :code
      t.references :product_category
      t.string :product_type
      t.text :description

      t.timestamps
    end
  end
end
