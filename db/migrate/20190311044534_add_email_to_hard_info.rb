class AddEmailToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	add_column :hard_infos, :email, :string
  end
end
