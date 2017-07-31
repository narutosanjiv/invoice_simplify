class PaymentsController < ApplicationController

  def new
    @order = Order.pending(current_user.id)
    @invoice = Invoice.new 
    @invoice.build_payment
    @invoice.build_address
  end

  def create
    invoice = Invoice.create()
  end

  private 
  def invoice_params
    params.require(:invoice).permit(payment_attributes: [:card_type, :credit_card_no, :cvv, :expiry_month, :expiry_year],
      address_attributes: Address.attribute_names - ["id", "addressable_id", "addressable_type"])
  end

  def fetch_required_params

  end

end
 