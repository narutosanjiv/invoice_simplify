class OrdersController < ApplicationController

  before_action :authenticate_user!

  def index 

  end

  def cart
    @order = Order.includes(:order_items).where(status: 'draft', user_id: current_user.id).last
    @order_items = @order.order_items
  end
end
