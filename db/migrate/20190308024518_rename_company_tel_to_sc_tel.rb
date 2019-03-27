class RenameCompanyTelToScTel < ActiveRecord::Migration[5.2]
  def change
  	rename_column :use_cases, :company_tel, :sc_tel
  end
end
