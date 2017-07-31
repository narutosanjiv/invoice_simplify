class Invoice < ApplicationRecord

  has_one :order
  belongs_to :user

  has_one :address,  as: :addressable
  has_one :payment, dependent: :destroy

  accepts_nested_attributes_for :address, :payment
end
