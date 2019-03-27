class ChangeColumnsIncludeDefaultForUseCase < ActiveRecord::Migration[5.2]
  def change
  	change_column :use_cases, :industry, :string
  	change_column :use_cases, :service_product, :string
  	change_column :use_cases, :product_count, :integer, :default => 0
  	change_column :use_cases, :customer_count, :integer, :default => 0
  	change_column :use_cases, :vendor_count, :integer, :default => 0
  	change_column :use_cases, :vehicle_count, :integer, :default => 0
  	change_column :use_cases, :driver_count, :integer, :default => 0
  end
end
