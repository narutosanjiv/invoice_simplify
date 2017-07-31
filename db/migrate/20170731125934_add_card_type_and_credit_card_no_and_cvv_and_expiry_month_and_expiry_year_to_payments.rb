class AddCardTypeAndCreditCardNoAndCvvAndExpiryMonthAndExpiryYearToPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :payments, :card_type, :string
    add_column :payments, :credit_card_no, :string
    add_column :payments, :cvv, :string
    add_column :payments, :expiry_month, :string
    add_column :payments, :expiry_year, :string
  end
end
