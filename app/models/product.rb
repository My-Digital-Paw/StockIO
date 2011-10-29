class Product < ActiveRecord::Base
  validates :code, :presence => true, :uniqueness => true
  validates :product_category_id, :presence => true
  validates :product_type, :inclusion => { :in => ["Stockable Product", "Non-Stockable Product", "Service"] }
  validates :price, :presence => true
  
  belongs_to :product_category
  
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
