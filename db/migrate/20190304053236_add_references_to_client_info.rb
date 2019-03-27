class AddReferencesToClientInfo < ActiveRecord::Migration[5.2]
  def change
  	add_reference :client_infos, :use_case, foreign_key: true
  end
end
