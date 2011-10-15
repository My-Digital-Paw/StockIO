class ProductCategory < ActiveRecord::Base
  validates :name, :presence => true
  validates_uniqueness_of :name, :scope => [:parent_category_id]
  
  belongs_to :parent_category, :class_name => "ProductCategory"
  has_many :sub_categories, :class_name => "ProductCategory", :foreign_key => "parent_category_id"
  has_many :product
end
