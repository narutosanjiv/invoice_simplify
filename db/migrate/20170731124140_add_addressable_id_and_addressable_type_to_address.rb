class AddAddressableIdAndAddressableTypeToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :addressable_id, :integer
    add_column :addresses, :addressable_type, :string
  end
end
