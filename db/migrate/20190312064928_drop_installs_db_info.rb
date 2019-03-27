class DropInstallsDbInfo < ActiveRecord::Migration[5.2]
  def change
  	def change
    drop_table :db_infos
    drop_table :posts
  end
  end
end
