class CreateOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :options do |t|
    	t.string :choice
      t.timestamps
    end
  end
end
