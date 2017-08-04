class Address < ApplicationRecord

  belongs_to :addressable, polymorphic: true, optional: true

  def name
    "#{first_name} #{last_name}"
  end

  def as_json(options = {})
    super(only: Address.attribute_names.without("created_at", "updated_at", "addressable_type", "addressable_id")) 
  end
end
