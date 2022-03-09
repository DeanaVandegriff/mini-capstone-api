class ProductsController < ApplicationController
  def index
  end

  def all_products
    products = Product.all
    render json: products.as_json
  end

  def first_product
    product = Product.first
    render json: product.as_json
  end

  def last_product
    product = Product.last
    render json: product.as_json
  end

end
