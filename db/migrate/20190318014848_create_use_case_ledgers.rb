class CreateUseCaseLedgers < ActiveRecord::Migration[5.2]
  def change
    create_table :use_case_ledgers do |t|
      t.string :use_case_code
      t.string :c_name
      t.string :c_furigana
      t.string :c_official_name
      t.string :c_pic
      t.string :c_rep
      t.string :c_rep_role
      t.string :c_rep_first_name
      t.string :c_rep_last_name
      t.string :c_office
      t.string :c_postal_code
      t.string :c_address1
      t.string :c_address2
      t.string :c_address3
      t.string :c_tel
      t.string :c_fax
      t.string :c_homepage
      t.string :c_email

      t.timestamps
    end
  end
end
