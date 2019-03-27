class UseCase < ApplicationRecord
	has_and_belongs_to_many :works, -> { distinct }, :join_table => :use_cases_works
	has_and_belongs_to_many :hard_infos, -> { distinct }, :join_table => :use_cases_hard_infos
	has_and_belongs_to_many :sales_details, -> { distinct },  :join_table => :use_cases_sales_details





end
