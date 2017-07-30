class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.float :price
      t.integer :quantity
      t.string :description
      t.string :url
      t.timestamps
    end
  end
end
