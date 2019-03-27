class AddMoreSoAddressToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hard_infos, :so_address, :so_address1
  	add_column :hard_infos, :so_address2, :text
  	add_column :hard_infos, :so_address3, :text
  end
end
