class CreateClientInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :client_infos do |t|
      t.string :industry
      t.string :service_product
      t.integer :product_count, :default => 0
      t.integer :customer_count, :default => 0
      t.integer :vendor_count, :default => 0
      t.integer :vehicle_count, :default => 0
      t.integer :driver_count, :default => 0

      t.timestamps
    end
  end
end
