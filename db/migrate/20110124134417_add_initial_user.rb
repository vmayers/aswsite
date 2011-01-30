class AddInitialUser < ActiveRecord::Migration
  def self.up
    User.create(:login_name => 'administrator', :administrator => true, :password => 'AswAdmin00', :password_confirmation => "AswAdmin00")
  end

  def self.down
  end
end
