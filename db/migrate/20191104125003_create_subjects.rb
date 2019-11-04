class CreateSubjects < ActiveRecord::Migration[5.2]
  def change
    create_table :subjects do |t|
    	t.string :subject_name
    	t.belongs_to :exam
      t.timestamps
    end
  end
end
