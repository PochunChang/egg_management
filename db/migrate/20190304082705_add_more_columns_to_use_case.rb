class AddMoreColumnsToUseCase < ActiveRecord::Migration[5.2]
  def change
  	add_column :use_cases, :introduction_date, :string
  	add_column :use_cases, :time_passed, :string
  	add_column :use_cases, :due_date, :string
  	add_column :use_cases, :time_remaining, :string
  	add_column :use_cases, :sales_person, :string
  	add_column :use_cases, :delivery_person, :string
  	add_column :use_cases, :superviser, :string
  	add_column :use_cases, :project_person, :string
  	add_column :use_cases, :program_person, :string
  	add_column :use_cases, :id_issued, :integer
  	add_column :use_cases, :sc_count, :integer
  	add_column :use_cases, :tel, :string
  	add_column :use_cases, :remote, :string
  	add_column :use_cases, :supervision_count, :integer
  	add_column :use_cases, :hoshu, :string
  	add_column :use_cases, :person_in_charge, :string
  	add_column :use_cases, :address, :text
  	add_column :use_cases, :company_tel, :string

  end
end
