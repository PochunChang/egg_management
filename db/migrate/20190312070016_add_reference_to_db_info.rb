class AddReferenceToDbInfo < ActiveRecord::Migration[5.2]
  def change
  	add_reference :db_infos, :hard_info, foreign_key: true
  end
end
