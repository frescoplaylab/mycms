class CreateAdminUsers < ActiveRecord::Migration[5.1]
  def up
    create_table :admin_users do |t|
            t.column "name", :string, :limit => 25
            t.string "password", :limit => 50
            t.string "email", :default => '', :null => false    
                t.timestamps              
    end
  end
  def down
      drop_table :admin_users
  end
end
