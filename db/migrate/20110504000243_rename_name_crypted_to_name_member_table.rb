class RenameNameCryptedToNameMemberTable < ActiveRecord::Migration
  
  def self.up
    rename_column :members, :name_crypted, :name
  end

  def self.down
    rename_column :members, :name, :name_crypted
  end
end
