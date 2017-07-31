class OrderItem < ApplicationRecord

  validates :price, presence: true

  belongs_to :order, optional: true
  belongs_to :item, optional: true
end
