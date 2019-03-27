class HardInfo < ApplicationRecord
	has_and_belongs_to_many :use_cases, -> { distinct }, :join_table => :use_cases_hard_infos
	has_many :db_infos, dependent: :destroy
end
