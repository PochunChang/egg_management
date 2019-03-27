class AddDenbanToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :denban, :integer
  end
end
