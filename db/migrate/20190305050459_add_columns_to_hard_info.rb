class AddColumnsToHardInfo < ActiveRecord::Migration[5.2]
  def change
  	add_column :hard_infos, :introduction_date, :string
  	add_column :hard_infos, :time_passed, :string
  	add_column :hard_infos, :due_date, :string
  	add_column :hard_infos, :time_remaining, :string
  	add_column :hard_infos, :sales_person, :string
  	add_column :hard_infos, :delivery_person, :string
  	add_column :hard_infos, :superviser, :string
  	add_column :hard_infos, :project_person, :string
  	add_column :hard_infos, :program_person, :string
  	add_column :hard_infos, :id_issued, :integer
  	add_column :hard_infos, :sc_count, :integer
  	add_column :hard_infos, :remote, :string
  	add_column :hard_infos, :supervision_count, :integer
  	add_column :hard_infos, :hoshu, :string
  	add_column :hard_infos, :person_in_charge, :string
  	add_column :hard_infos, :company_tel, :string
  end
end
