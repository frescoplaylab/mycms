class CreateBranches < ActiveRecord::Migration[5.1]
  def up
    create_table :branches do |t|
         t.integer "category_id"
    	 t.string "name"
    	 t.integer "position"
    	 t.boolean "visiblity"
   		 t.timestamps
    end
    add_index("branches", "category_id")
  end
  def down
  	drop_table :branches
  end
end
