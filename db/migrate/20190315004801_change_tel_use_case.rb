class ChangeTelUseCase < ActiveRecord::Migration[5.2]
  def change
  	rename_column :use_cases, :person_in_charge, :c_pic
  	rename_column :use_cases, :address1, :c_address1
  	rename_column :use_cases, :address2, :c_address2
  	rename_column :use_cases, :address3, :c_address3
  	rename_column :use_cases, :postal_code, :c_postal_code
  	rename_column :use_cases, :email, :c_email
  	add_column :use_cases, :c_tel, :string
  	add_column :use_cases, :c_fax, :string
  end
end
