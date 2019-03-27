class AddReferencesToSalesDetail < ActiveRecord::Migration[5.2]
  def change
    add_reference :sales_details, :work, foreign_key: true
  end
end
