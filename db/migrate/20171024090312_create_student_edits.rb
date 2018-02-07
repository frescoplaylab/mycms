class CreateStudentEdits < ActiveRecord::Migration[5.1]
   def up
    create_table :student_edits do |t|
      t.integer "admin_user_id"
      t.integer "student_id"
      t.string "summary"
      t.timestamps
    end
    add_index("student_edits", ['admin_user_id', 'student_id'])
  end

  def down
    drop_table :student_edits
  end
end
