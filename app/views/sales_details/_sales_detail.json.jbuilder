json.extract! sales_detail, :id, :sd_no, :date, :product_name, :sales_amount, :customize_cost, :created_at, :updated_at, :use_case_no
json.url sales_detail_url(sales_detail, format: :json)
