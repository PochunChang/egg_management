class AddPostcodeToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :postal_code, :string
  end
end
