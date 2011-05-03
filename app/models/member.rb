
class Member < ActiveRecord::Base
  include ActiveModel::Validations
  
  attr_accessor :address, :city, :phone_number, :postal_code, :email
  
  attr_encrypted_options.merge!(:prefix => '', :suffix => '_crypted')
  #attr_encrypted :name, :key => '234jjsodf@@#$2ksdfio2##4', :encode => true
  attr_encrypted :address, :key => '123jifdOIDIFJf(*(039238))', :encode => true
  attr_encrypted :city, :key => 'asdf892834@#@#$#9(&fdsdfflf)', :encode => true
  attr_encrypted :phone_number, :key => 'asldf8sa9d87f*(&(*^&)#832384)', :encode => true
  attr_encrypted :postal_code, :key => 'asdfk#$%#@@@jkljois(((234)))', :encode => true
  attr_encrypted :email, :key => 'ASDFFF@343213kljksdf*(*&#$#234)', :encode => true
  
  has_one :user
  has_one :executive_member
  has_many :member_bap_forms
  
  #accepts_nested_attributes_for :member_bap_forms
  
  validates :name, :presence => true
  validates :email, :email => true
  validates :email_crypted, :uniqueness => {:message => "Email is already in use"}
  #validates :phone_number, :phone_number => true
end
