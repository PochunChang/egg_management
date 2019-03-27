class AddUseCaseNoToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	add_column :hard_infos, :use_case_no, :integer
  	add_column :hard_infos, :client_name, :string
  	add_column :hard_infos, :product_name, :string
  	add_column :hard_infos, :mod, :string
  end
end
