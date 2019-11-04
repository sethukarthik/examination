class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
    	t.belongs_to :question
    	t.belongs_to :option
    	t.belongs_to :student
      t.timestamps
    end
  end
end
