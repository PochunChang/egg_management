class SalesDetail < ApplicationRecord
  has_and_belongs_to_many :use_cases, -> { distinct }, :join_table => :use_cases_sales_details
end
