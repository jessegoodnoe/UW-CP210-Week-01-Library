class AddUserToBooks < ActiveRecord::Migration
  def up
    change_table :books do |t|
      t.references :user
    end
  end
  
  def down
    change_table :books do |t|
      t.remove user_id
    end
  end
end
