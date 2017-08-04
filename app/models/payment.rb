class Payment < ApplicationRecord

  validates :card_type, :cvv, :expiry_month, :expiry_year, :amount, presence: true

  belongs_to :invoice

  def as_json(options = {})
    super(only: [:amount, :transaction_type, :card_type])  
  end
end
