class CreateUseCasesSalesDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :use_cases_sales_details, id: false do |t|
    	t.belongs_to :use_case, index: true
    	t.belongs_to :sales_detail, index: true
    end
  end
end
