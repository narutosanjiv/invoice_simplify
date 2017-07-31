class Item < ApplicationRecord
  validates :price, :description, :title, presence: true
  
  has_many :order_items
end
