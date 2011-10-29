class AddPriceToProduct < ActiveRecord::Migration
  def up
    add_column :products, :price, :decimal
    Product.update_all ["price = ?", 0.00]
  end
  
  def down
    remove_column :products, :price
  end
end
