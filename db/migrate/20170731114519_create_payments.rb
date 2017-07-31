class CreatePayments < ActiveRecord::Migration[5.1]
  def change
    create_table :payments do |t|
      
      t.string :pay_method
      t.string :transaction_type
      t.float :amount
      
      
      t.references :invoice, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
