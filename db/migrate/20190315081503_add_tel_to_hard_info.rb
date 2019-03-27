class AddTelToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	add_column :hard_infos, :tel, :string
  end
end
