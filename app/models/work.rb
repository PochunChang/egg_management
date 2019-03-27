class Work < ApplicationRecord
  has_and_belongs_to_many :use_cases, -> { distinct }, :join_table => :use_cases_works
end
