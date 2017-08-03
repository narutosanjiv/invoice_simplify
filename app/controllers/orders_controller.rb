class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index 
    @orders = Order.pending(current_user.id)
  end

  def cart
    @order = Order.pending(current_user.id).last
    @order_items = @order.order_items if @order
  end
end
