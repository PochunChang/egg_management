class AddUseCaseNoToSalesDetail < ActiveRecord::Migration[5.2]
  def change
  	add_column :sales_details, :use_case_no, :integer
  end
end
