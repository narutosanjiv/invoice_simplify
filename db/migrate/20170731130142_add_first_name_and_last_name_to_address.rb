class AddFirstNameAndLastNameToAddress < ActiveRecord::Migration[5.1]
  def change
    add_column :addresses, :first_name, :string
    add_column :addresses, :last_name, :string
  end
end
