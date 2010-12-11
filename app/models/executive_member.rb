class ExecutiveMember < ActiveRecord::Base
  belongs_to(:executive_position)
  belongs_to(:member) 
     
end
