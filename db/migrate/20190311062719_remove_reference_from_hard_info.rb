class RemoveReferenceFromHardInfo < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :hard_infos, :use_case, foreign_key: true
  end
end
