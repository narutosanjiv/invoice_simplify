class AddStateAndPhoneNoToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :state, :string
    add_column :addresses, :phone_no, :string
  end
end
