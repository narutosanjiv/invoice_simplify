class AddTotalPriceToInvoices < ActiveRecord::Migration[5.1]
  def change
    add_column :invoices, :total_price, :float
  end
end
