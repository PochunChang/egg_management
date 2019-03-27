class AddTelAndFaxToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	add_column :hard_infos, :so_tel, :string
  	add_column :hard_infos, :so_fax, :string
  end
end
