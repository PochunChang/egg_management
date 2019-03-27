class RemoveWorkIdFromUsecase < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :use_cases, :work, foreign_key: true
  end
end
