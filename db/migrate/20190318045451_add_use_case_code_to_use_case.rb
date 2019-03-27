class AddUseCaseCodeToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :use_case_code, :string
  end
end
