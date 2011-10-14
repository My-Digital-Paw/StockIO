class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.string :name
      t.references :parent_category

      t.timestamps
    end
    
    add_index :product_categories, [:name, :parent_category_id]
  end
end
