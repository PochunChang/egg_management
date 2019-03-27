json.extract! client_info, :id, :created_at, :updated_at, :use_case_id, :industry, :service_product, :customer_count, :vendor_count, :product_count, :vehicle_count, :driver_count
json.url client_info_url(client_info, format: :json)
