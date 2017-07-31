class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index 

  end

  def cart
    @order = Order.pending(current_user.id)
    @order_items = @order.order_items
  end
end
