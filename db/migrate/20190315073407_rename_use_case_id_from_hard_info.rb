class RenameUseCaseIdFromHardInfo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :hard_infos, :use_case_id, :use_case_identification
  end
end
