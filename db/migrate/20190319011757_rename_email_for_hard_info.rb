class RenameEmailForHardInfo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hard_infos, :hard_info_no, :denban
  	rename_column :hard_infos, :email, :c_email
  	rename_column :hard_infos, :memo, :remark
  end
end
