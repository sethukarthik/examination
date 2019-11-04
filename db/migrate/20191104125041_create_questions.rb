class CreateQuestions < ActiveRecord::Migration[5.2]
  def change
    create_table :questions do |t|
    	t.string :question
    	t.belongs_to :option
    	t.belongs_to :chapter
      t.timestamps
    end
  end
end
