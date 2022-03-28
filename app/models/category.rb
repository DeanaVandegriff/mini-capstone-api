class Category < ApplicationRecord
  has_many :category_products
  has_many :products, through: :category_products
  # def products
  #   category_products.map do |category_products|
  #     category_product.product
  #   end
  # end
end
