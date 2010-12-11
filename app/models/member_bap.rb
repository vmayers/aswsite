class MemberBap < ActiveRecord::Base
  belongs_to(:member)
  has_one(:bap_species)
  has_one(:bap_spawning_condition)
  
  def initialize
    super
    
    self.member = Member.new unless self.member
    self.bap_species = BapSpecies.new
    self.bap_spawning_condition = BapSpawningCondition.new
  end
  
  def build(params)
    if self.member.id.nil? 
      member_attrs = {
        :name => params[:name],
        :address => params[:address],
        :province_id => params[:province_id],
        :phone_number => params[:phone_number],
        :postal_code => params[:postal_code], 
        :email => params[:email], 
        :city => params[:city]
      }
      self.member = Member.create(member_attrs)
    end
    
    raise self.member.inspect
  end
end
