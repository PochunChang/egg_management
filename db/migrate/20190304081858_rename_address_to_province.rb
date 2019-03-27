class RenameAddressToProvince < ActiveRecord::Migration[5.2]
  def change
  	rename_column :use_cases, :address, :province
  end
end
