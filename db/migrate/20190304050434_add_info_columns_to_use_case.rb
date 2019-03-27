class AddInfoColumnsToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :industry, :string
  	add_column :use_cases, :service_product, :string
  	add_column :use_cases, :product_count, :integer
  	add_column :use_cases, :customer_count, :integer
  	add_column :use_cases, :vendor_count, :integer
  	add_column :use_cases, :vehicle_count, :integer
  	add_column :use_cases, :driver_count, :integer

  end
end
