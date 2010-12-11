class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.integer :member_id, :null => false
      t.string :login_name, :null => false
      t.string :hashed_password, :null => false
      t.string :salt, :null => false
      t.boolean :administrator, :null => false, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
