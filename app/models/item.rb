class Item < ApplicationRecord
  validates :price, :description, :title, presence: true
  
end
