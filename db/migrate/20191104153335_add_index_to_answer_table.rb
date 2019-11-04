class AddIndexToAnswerTable < ActiveRecord::Migration[5.2]
  def change
  	add_index :answers, [:question_id, :option_id, :student_id]
  end
end
