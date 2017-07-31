class InvoicesController < ApplicationController
  def index
    @invoices = Invoice.where(user_id: current_user.id)

    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end

  def show
    @invoice = Invoice.where(number: params[:number]).last
    @order = Order.where(user_id: current_user.id, invoice_id: @invoice.id).last
    @address = @invoice.address
    respond_to do |format|
      format.html
      format.json { render json: @user }
    end
  end
end