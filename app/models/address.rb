class Address < ApplicationRecord

  belongs_to :addressable, polymorphic: true, optional: true

  def name
    "#{first_name} #{last_name}"
  end
end
