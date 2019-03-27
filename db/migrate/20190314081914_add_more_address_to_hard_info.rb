class AddMoreAddressToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hard_infos, :address, :address1
  	add_column :hard_infos, :address2, :text
  	add_column :hard_infos, :address3, :text
  end
end
