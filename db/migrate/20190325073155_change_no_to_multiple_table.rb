class ChangeNoToMultipleTable < ActiveRecord::Migration[5.2]
  def change
  	change_column :works, :use_case_no, :string
  	change_column :use_cases, :use_case_no, :string
  end
end
