class AddNoColumnsToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :sales_no, :integer
  	add_column :use_cases, :lookup_no, :integer
  	add_column :use_cases, :project_no, :integer
  end
end
