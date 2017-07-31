class AddAddressableIdAndAddressableTypeToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :addressable_id, :integer
    add_column :invoices, :addressable_type, :string
  end
end
