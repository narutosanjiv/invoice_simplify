class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :street1
      t.string :street2
      t.string :city
      t.string :pincode
      t.string :country
      t.string :mobile_no

      t.timestamps
    end
  end
end
