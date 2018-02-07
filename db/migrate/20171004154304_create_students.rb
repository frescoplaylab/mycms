class CreateStudents < ActiveRecord::Migration[5.1]
  def up
    create_table :students do |t|
         t.integer "branch_id"
    	 t.string "name"
    	 t.integer "position"
    	 t.boolean "visiblity"
    	 t.text "address"
    	 t.date "dob"
   		 t.timestamps
    end
      add_index("students", "branch_id")
  end
  def down
  	drop_table :students
  end
end
