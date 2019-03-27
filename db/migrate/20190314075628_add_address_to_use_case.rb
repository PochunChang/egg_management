class AddAddressToUseCase < ActiveRecord::Migration[5.2]
  def change
  	rename_column :use_cases, :so_address, :so_address1
  	add_column :use_cases, :so_address2, :text
  	add_column :use_cases, :so_address3, :text
  	add_column :use_cases, :address1, :text
  	add_column :use_cases, :address2, :text
  	add_column :use_cases, :address3, :text
  end
end
