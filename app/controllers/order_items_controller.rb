class OrderItemsController < ApplicationController
  
  before_action :authenticate_user!
  before_action :get_order_item, only: [:create]

  def create 
    order_item = nil
    order = Order.where(status: 'draft', user_id: current_user.id).first_or_initialize    
    
    Order.transaction do 
      if order.new_record?
        order_item = order.order_items.build(quantity: 1, item_id: @item.id, price: @item.price)
        order.total_price = @item.price
      else
        order_item = OrderItem.where(item_id: @item.id, order_id: order.id).last || order.order_items.build(quantity: 0, item_id: @item.id, unit_price: @item.price, price: @item.price)
        order_item.quantity = order_item.quantity + 1
        order_item.price = order_item.price + @item.price
        order.total_price = order.total_price + @item.price
      end
      order.save!
      order_item.save!
    end
    render json: {success: true, message: 'Added to Cart'}, status: 201
  rescue ActiveRecord::RecordInvalid => e
    byebug
    render json: {success: true, message: e.message}, status: 403 
  end

  private
  def order_item_params
    params[:order].permit(:item_id)
  end

  def get_order_item
    @item = Item.where(id: params[:order_item][:item_id]).last
  end
end
