
class Member < ActiveRecord::Base
  include ActiveModel::Validations
  has_one(:user)
  has_one(:executive_member)
  has_many(:member_baps)
  
  validates :name, :presence => true
  validates :email, :email => true
  validates :phone_number, :phone_number => true
end
