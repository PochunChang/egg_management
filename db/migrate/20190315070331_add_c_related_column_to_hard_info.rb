class AddCRelatedColumnToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hard_infos, :store_name, :c_office
  	rename_column :hard_infos, :worker_name, :c_pic
  	rename_column :hard_infos, :address1, :c_address1
  	rename_column :hard_infos, :address2, :c_address2
  	rename_column :hard_infos, :address3, :c_address3
  	rename_column :hard_infos, :tel, :c_tel
  	rename_column :hard_infos, :fax, :c_fax
  	add_column :hard_infos, :c_postal_code, :string
  	remove_column :hard_infos, :person_in_charge, :string
  end
end
