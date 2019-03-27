class RemoveColumnsFromUseCase < ActiveRecord::Migration[5.2]
  def change
    remove_column :use_cases, :industry, :string
    remove_column :use_cases, :service_product, :string
  	remove_column :use_cases, :product_count, :integer
  	remove_column :use_cases, :customer_count, :integer
  	remove_column :use_cases, :vendor_count, :integer
  	remove_column :use_cases, :vehicle_count, :integer
  	remove_column :use_cases, :driver_count, :integer
  end
end
