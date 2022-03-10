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

  def one_product
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    render json: product.as_json
  end
end
