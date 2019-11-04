class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    	t.string :exam_question
    	t.belongs_to :option_id
    	t.belongs_to :chapter
      t.timestamps
    end
  end
end
