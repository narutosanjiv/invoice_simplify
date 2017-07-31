class Payment < ApplicationRecord

  validates :card_type, :cvv, :expiry_month, :expiry_year, :amount, presence: true

  belongs_to :invoice
end
