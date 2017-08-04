class CreateApiKeyStores < ActiveRecord::Migration[5.1]
  def change
    create_table :api_key_stores do |t|
      t.string :key
      t.string :domain

      t.timestamps
    end
  end
end
