class ChangeMemoStringToText < ActiveRecord::Migration[5.2]
  def change
  	change_column :use_cases, :memo, :text
  end
end
