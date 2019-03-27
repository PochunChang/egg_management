class RemoveReferenceFromWorkAndSalesDetail < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :works, :use_case, foreign_key: true
  	remove_reference :sales_details, :use_case, foreign_key: true
  end
end
