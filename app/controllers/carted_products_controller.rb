class CartedProductsController < ApplicationController
  def create
    carted_product = CartedProduct.new(
    user_id: params[:user_id]
    product_id: params[:product_id]
    quantity: params[:quantity]
    status: params[:status]
    order_id: params[:order_id]
    )
    order.save
    render json: carted_product
  end
 
end


   
