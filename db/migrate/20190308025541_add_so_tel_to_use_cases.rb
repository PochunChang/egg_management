class AddSoTelToUseCases < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :so_tel, :string
  	add_column :use_cases, :so_fax, :string
  end
end
