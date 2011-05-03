class ChangeLogininNameToEncryptedLoginNameInUsersTable < ActiveRecord::Migration
  def self.up
    rename_column :users, :login_name, :encrypted_login_name

  end

  def self.down
    rename_column :users, :encrypted_login_name, :login_name
  end
end
