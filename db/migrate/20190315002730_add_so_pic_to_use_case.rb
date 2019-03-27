class AddSoPicToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :so_pic, :string
  	add_column :use_cases, :email, :string
  end
end
