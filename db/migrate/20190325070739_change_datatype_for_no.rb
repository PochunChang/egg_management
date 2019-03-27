class ChangeDatatypeForNo < ActiveRecord::Migration[5.2]
  def change
  	change_column :works, :work_no, :string
  end
end
