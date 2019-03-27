class AddManythingsToWork < ActiveRecord::Migration[5.2]
  def change
    add_column :works, :date, :string
    add_column :works, :time, :time
    add_column :works, :client_name, :string
    add_column :works, :classification, :string
    add_column :works, :worker_name, :string
    add_column :works, :kct, :string
    add_column :works, :subject, :string
    add_column :works, :content, :text
  end
end
