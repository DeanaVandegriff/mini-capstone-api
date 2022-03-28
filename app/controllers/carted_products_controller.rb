class CartedProductsController < ApplicationController
  def create
    @carted_product = CartedProduct.new(
      user_id: current_user.id,
      product_id: params[:product_id],
      quantity: params[:quantity],
      status: "carted",
    )
    @carted_product.save
    render template: "carted_product/show"
  end

  def index
    @carted_products = current_user.carter_products where(status: "carted")
    render template "carted_product/index"
  end

  def destroy
    carted_product = current_user.carted_products.find(params[:id], status: "carted")
    carted_product.status = "removed"
    carted_product.save
    render json: { status: "Carted product successfully removed!" }
  end
end
