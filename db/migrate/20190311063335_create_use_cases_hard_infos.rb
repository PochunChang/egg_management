class CreateUseCasesHardInfos < ActiveRecord::Migration[5.2]
  def change
    create_table :use_cases_hard_infos, id: false do |t|
    	t.belongs_to :use_case, index: true
    	t.belongs_to :hard_info, index: true
    end
  end
end
