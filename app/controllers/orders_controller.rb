class OrdersController < ApplicationController
  before_action :authenticate_user
  
  def index
    if current_user
      orders = current_user.orders
      render json: orders.as_json
    else
      render json: [], status: :unauthorized
    end
  end

  def show
    order = current_user.orders(id: params[:id])
    render json: order.as_json
  end

  def create
    product = Product.find_by(id: params[:product_id])

    calculated_subtotal = product.price * params[:quantity]
    calculated_tax = calculated_subtotal * 0.09
    calculated_total = calculated_subtotal + calculated_tax

    order = Order.new(
      user_id: current_user.id, #from applications_controller
      product_id: params[:product_id],
      quantity: params[:quantity],
      subtotal: calculated_subtotal,
      tax: calculated_tax,
      total: calculated_total,
    )
    order.save
    render json: order.as_json
  end

  def update
    order_id = params["id"]
    @order = Order.find_by(id: order_id)
    @order.user_id = params["user_id"] || @order.user_id
    @order.product_id = params["product_id"] || @order.product_id
    @order.quantity = params["quantity"] || @order.quantity
    @order.subtotal = params["subtotal"] || @order.subtotal
    @order.tax = params["tax"] || @order.tax
    @order.total = params["total"] || @order.total
    render json: order.as_json
  end
end
