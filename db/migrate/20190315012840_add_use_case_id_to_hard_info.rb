class AddUseCaseIdToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	add_column :hard_infos, :use_case_id, :integer
  end
end
