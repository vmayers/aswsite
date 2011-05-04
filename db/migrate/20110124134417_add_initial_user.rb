class AddInitialUser < ActiveRecord::Migration
  def self.up
    # u = User.new
    #  u.login_name = 'administrator'
    #  u.password = 'AswAdmin00'
    #  u.password_confirmation = 'AswAdmin00'
    #  u.administrator = true
    #  u.save
    #User.create(:login_name => 'administrator', :administrator => true, :password => 'AswAdmin00', :password_confirmation => "AswAdmin00")
  end

  def self.down
    # u = User.find_by_login_name('administrator')
    # if u
    #   u.destroy
    # end 
  end
end
