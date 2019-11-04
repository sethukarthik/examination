class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
    	t.string :name
    	t.integer :in_correct
    	t.integer :correct
    	t.integer :skipped
      t.timestamps
    end
  end
end
