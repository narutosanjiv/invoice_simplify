class Order < ApplicationRecord

  scope :pending, ->(user_id){ where(status: 'draft', user_id: user_id).last}

  has_many :order_items
  belongs_to :invoice, optional: true
end
