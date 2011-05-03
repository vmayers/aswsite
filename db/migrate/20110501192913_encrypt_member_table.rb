class EncryptMemberTable < ActiveRecord::Migration
  def self.up
    rename_column :members, :address, :address_crypted
    rename_column :members, :city, :city_crypted
    rename_column :members, :phone_number, :phone_number_crypted
    rename_column :members, :postal_code, :postal_code_crypted
    rename_column :members, :email, :email_crypted
  end

  def self.down
    rename_column :members, :address_crypted, :address       
    rename_column :members, :city_crypted,:city          
    rename_column :members, :phone_number_crypted, :phone_number
    rename_column :members, :postal_code_crypted, :postal_code   
    rename_column :members, :email_crypted, :email    
  end
end
