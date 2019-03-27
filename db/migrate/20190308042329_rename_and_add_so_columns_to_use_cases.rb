class RenameAndAddSoColumnsToUseCases < ActiveRecord::Migration[5.2]
  def change
  	rename_column :use_cases, :address, :so_address
  	add_column :use_cases, :so_name, :string
  end
end
