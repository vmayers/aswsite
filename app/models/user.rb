require 'digest/sha1'

class User < ActiveRecord::Base
  belongs_to(:member)
  has_many(:notification)
  
  validates :login_name, :presence => true
  validates :encrypted_login_name, :uniqueness => true
  validates :member_id, :uniqueness => true, :if => "member_id != nil"

  attr_encrypted :login_name, :key => '#422BBBWS8998!!$%sdfSSDFF2893', :encode => true
  
  attr_accessor :name, :password_confirmation, :password
  
  validates_confirmation_of :password
  validate :password_non_blank

  public
    def password
      @password
    end

    def password=(pwd)
      @password = pwd
      return if pwd.blank?
      create_new_salt() 
      self.hashed_password = User.encrypted_password(self.password, self.salt)
    end

    def self.authenticate(login_name, password)
      user = self.new 
      user.login_name = login_name
      user = self.where(["encrypted_login_name = ?", user.encrypted_login_name]).first
      if user
        expected_password = encrypted_password(password, user.salt)
        if user.hashed_password != expected_password
          user = nil
        end
      end
      return user
    end

  private
    def password_non_blank
      errors.add(:password, "Missing password" ) if hashed_password.blank?
    end

    def self.encrypted_password(password, salt)
      string_to_hash = password + "cichlid" + salt
      Digest::SHA1.hexdigest(string_to_hash)
    end

    def create_new_salt
      self.salt = self.object_id.to_s + rand.to_s
    end
end
