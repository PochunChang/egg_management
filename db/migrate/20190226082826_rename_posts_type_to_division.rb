class RenamePostsTypeToDivision < ActiveRecord::Migration[5.2]
  def change
  	rename_column :posts, :type, :division
  end
end
