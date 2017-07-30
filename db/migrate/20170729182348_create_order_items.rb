class CreateOrderItems < ActiveRecord::Migration[5.1]
  def change
    create_table :order_items do |t|
      t.references :order
      t.references :item
      t.float :price
      t.string :status

      t.timestamps
    end
  end
end
