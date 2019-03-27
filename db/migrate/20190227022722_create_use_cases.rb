class CreateUseCases < ActiveRecord::Migration[5.2]
  def change
    create_table :use_cases do |t|
      t.string :division
      t.integer :number
      t.string :date
      t.string :client_name
      t.string :product_name
      t.string :mod
      t.string :address
      t.string :store
      t.text :memo

      t.timestamps
    end
  end
end
