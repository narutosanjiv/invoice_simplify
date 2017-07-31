class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index 
    @order = Order.pending(current_user.id)
  end

  def cart
    @order = Order.pending(current_user.id)
    @order_items = @order.order_items if @order.any?
  end
end
