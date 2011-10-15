class Product < ActiveRecord::Base
  validates :code, :presence => true, :uniqueness => true
  validates :product_category_id, :presence => true
  validates :product_type, :inclusion => { :in => ["Stockable Product", "Non-Stockable Product", "Service"] }
  
  belongs_to :product_category
end
