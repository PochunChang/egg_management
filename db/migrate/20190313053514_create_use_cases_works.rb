class CreateUseCasesWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :use_cases_works, id: false do |t|
    	t.belongs_to :use_case, index: true
    	t.belongs_to :work, index: true
    end
  end
end
