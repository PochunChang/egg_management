class CreateSalesDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :sales_details do |t|
      t.integer :sd_no
      t.string :date
      t.string :product_name
      t.integer :sales_amount
      t.integer :customize_cost
      t.references :use_case, foreign_key: true

      t.timestamps
    end
  end
end
