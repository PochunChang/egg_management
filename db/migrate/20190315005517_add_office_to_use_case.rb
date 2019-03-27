class AddOfficeToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :c_office, :string
  end
end
