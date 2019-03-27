class AddColumnsToEvent < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :destination, :string
  	add_column :events, :region, :string
  	add_column :events, :cost, :string
  	add_column :events, :type, :string
  	add_column :events, :markup, :string
  	add_column :events, :transportation, :string
  	add_column :events, :confirmed, :boolean, :default => true
  end
end
