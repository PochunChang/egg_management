class AddIndustryAndOtherColumnsToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :industry, :string, :default => "不明"
  	add_column :use_cases, :service_product, :string
  	add_column :use_cases, :product_count, :integer, :default => 0
  	add_column :use_cases, :customer_count, :integer, :default => 0
  	add_column :use_cases, :vendor_count, :integer, :default => 0
  	add_column :use_cases, :vehicle_count, :integer, :default => 0
  	add_column :use_cases, :driver_count, :integer, :default => 0
  end
end
