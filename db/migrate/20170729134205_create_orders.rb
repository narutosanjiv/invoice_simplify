class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.float :total_price
      t.string :status
      t.references :invoice
      t.references :user
      t.timestamps
    end
  end
end
