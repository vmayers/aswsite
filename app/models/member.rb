
class Member < ActiveRecord::Base
  include ActiveModel::Validations
  has_one :user
  has_one :executive_member
  has_many :member_bap_forms
  
  #accepts_nested_attributes_for :member_bap_forms
  
  validates :name, :presence => true
  validates :email, :email => true, :uniqueness => true
  validates :phone_number, :phone_number => true
end
