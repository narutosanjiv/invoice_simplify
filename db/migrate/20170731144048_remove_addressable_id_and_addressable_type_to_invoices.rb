class RemoveAddressableIdAndAddressableTypeToInvoices < ActiveRecord::Migration[5.1]
  def change
    remove_column :invoices, :addressable_id, :integer
    remove_column :invoices, :addressable_type, :string
  end
end
