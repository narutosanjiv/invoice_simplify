class AddSellerNameAndBrandNameToItems < ActiveRecord::Migration[5.1]
  def change
    add_column :items, :seller_name, :string
    add_column :items, :brand_name, :string
  end
end
