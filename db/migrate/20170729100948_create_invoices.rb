class CreateInvoices < ActiveRecord::Migration[5.1]
  def change
    create_table :invoices do |t|
      t.string :number
      t.datetime :date_at
      t.json :details

      t.references :user
      t.timestamps
    end
  end
end
