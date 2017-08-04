class Invoice < ApplicationRecord

  has_one :order
  belongs_to :user

  has_one :address,  as: :addressable
  has_one :payment, dependent: :destroy

  accepts_nested_attributes_for :address, :payment


  def as_json(options = {})
    super(only: [:number], methods: [:invoice_date, :price_in_gbp]).merge(address: address.as_json, payment: payment.as_json) 
  end

  private
  def invoice_date
    self.date_at.strftime("%Y-%m-%d")
  end

  def price_in_gbp
    Fixer.conversion_rates(expected_currency: "GBP", amount: self.total_price)
  end
end
