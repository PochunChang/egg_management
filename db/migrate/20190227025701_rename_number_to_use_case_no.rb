class RenameNumberToUseCaseNo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :use_cases, :number, :use_case_no
  end
end
