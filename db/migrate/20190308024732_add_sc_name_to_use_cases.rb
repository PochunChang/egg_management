class AddScNameToUseCases < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :sc_name, :string
  end
end
