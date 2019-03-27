class CreateHardInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :hard_infos do |t|
      t.integer :hard_no
      t.string :store_name
      t.string :worker_name
      t.text :address
      t.string :tel
      t.string :fax
      t.integer :connection_current
      t.integer :connection_max
      t.text :memo
      t.references :use_case, foreign_key: true

      t.timestamps
    end
  end
end
