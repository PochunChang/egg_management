class AddReferenceToManyTables < ActiveRecord::Migration[5.2]
  def change
  	add_reference :use_case_ledgers, :use_case, foreign_key: true
  	add_reference :use_case_ledgers, :hard_info, foreign_key: true

  end
end
