class ProductsController < ApplicationController
  def first_product
    product = Product.first
    render json: product.as_json
  end

  def last_product
    product = Product.last
    render json: products.as_json
  end

  def index
    products = Product.all
    @products = products
    render template: "products/index"
  end

  def show
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    @product = product
    render template: "products/show"
  end

  def create
    product = Product.new(
      name: params["name"],
      price: params["price"],
      image_url: params["image_url"],
      description: params["description"],
    )
    product.save
    @product = product
    render template: "products/show"
  end

  def update
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.name = params["name"] || product.name
    product.price = params["price"] || product.price
    product.image_url = params["image_url"] || product.image_url
    product.description = params["description"] || product.description
    product.save
    @product = product
    render template: "products/show"
  end

  def delete
    product_id = params["id"]
    product = Product.find_by(id: product_id)
    product.destroy
    render json: { message: "Product successfully deleted" }
  end
end
