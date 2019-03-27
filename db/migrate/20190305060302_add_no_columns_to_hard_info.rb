class AddNoColumnsToHardInfo < ActiveRecord::Migration[5.2]
  def change
   	add_column :hard_infos, :sales_no, :integer
  	add_column :hard_infos, :lookup_no, :integer
  end
end
