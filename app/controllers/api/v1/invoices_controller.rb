class Api::V1::InvoicesController < Api::V1::AuthenticationController
  before_action :get_user

  def list
    @invoices = Invoice.where(user_id: @user.id)
    render json: @invoices
  end

  def show
    @invoice = Invoice.where(number: params[:invoice_no]).last
    render json: @invoice
  end

  private 
  def get_user
    @user = User.where(email: params[:email]).last
  end
end