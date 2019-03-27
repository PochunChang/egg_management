class RenameMemoToRemark < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :remark, :string
  end
end
