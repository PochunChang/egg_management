class AddMarkupsToEvent < ActiveRecord::Migration[5.2]
  def change
  	add_column :events, :important, :boolean, :default => false
  	add_column :events, :rest, :boolean, :default => false
  	add_column :events, :done, :boolean, :default => false
  	add_column :events, :lightbulb, :boolean, :default => false
  	add_column :events, :triangle, :boolean, :default => false
  	add_column :events, :celebrate, :boolean, :default => false
  	add_column :events, :star, :boolean, :default => false

  end
end
