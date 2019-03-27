class AddReferencesToUseCase < ActiveRecord::Migration[5.2]
  def change
    add_reference :use_cases, :work, foreign_key: true
  end
end
