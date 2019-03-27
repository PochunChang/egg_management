class RemoveReferenceFromSalesDetail < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :sales_details, :work, foreign_key: true
  end
end
