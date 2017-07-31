class PaymentsController < ApplicationController

  def new
    @order = Order.pending(current_user.id)
    @invoice = Invoice.new 
    @invoice.build_payment
    @invoice.build_address
  end

  def create
    white_listed_params = invoice_params
    added_params = merge_with_extra_params(white_listed_params.to_h)
    @invoice = Invoice.new(added_params)
    if @invoice.save 
      @order.invoice_id = @order.id
      @order.save
      @address = @invoice.address
      render template: 'invoices/show'
    else 
      render template: 'payments/new'
    end
  end

  private 
  def invoice_params
    params.require(:invoice).permit(payment_attributes: [:card_type, :credit_card_no, :cvv, :expiry_month, :expiry_year],
      address_attributes: Address.attribute_names - ["id", "addressable_id", "addressable_type"])
  end

  def merge_with_extra_params(inv_params)
    @order = Order.includes(:order_items).pending(current_user.id)
    extra_params = {
      date_at: DateTime.now,
      number: SecureRandom.hex,
      total_price: @order.total_price,
      user_id: current_user.id,
      payment_attributes: {
        pay_method: 'online',
        transaction_type: 'credit',
        amount: @order.total_price,
        user_id: current_user.id
      }
    }
    inv_params.deep_merge(extra_params)
  end

end
 