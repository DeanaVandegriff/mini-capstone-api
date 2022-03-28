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
    @order = current_user.orders(id: params[:id])
    render template: "orders/show"
  end

  def create
    carted_products = current_user.carter_products where(status: "carted")


    @order = Order.new(
      user_id: current_user.id, #from applications_controller
      # subtotal: calculated_subtotal,
      # tax: calculated_tax,
      # total: calculated_total,
    )
    @order.save
    carted_products = current_user.carter_products where(status: "carted")
    carted_products.update_all{status: "purchased", order_id: @order.id}
    @order.update_totals
    render template: "order/show"
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
