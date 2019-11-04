class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
    	t.belongs_to :question_id
    	t.belongs_to :option_id
      t.timestamps
    end
  end
end
