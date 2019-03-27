class ChangeHardNoToHardInfoNo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hard_infos, :hard_no, :hard_info_no
  	add_column :hard_infos, :so_name, :string
  	add_column :hard_infos, :so_address, :text
  	add_column :hard_infos, :so_pic, :string
  end
end
