class AddUseCaseNoToWork < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :use_case_no, :integer
  end
end
