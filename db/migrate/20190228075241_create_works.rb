class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.integer :work_no
      t.references :use_case, foreign_key: true

      t.timestamps
    end
  end
end
