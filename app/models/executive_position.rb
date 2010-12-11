class ExecutivePosition < ActiveRecord::Base
  has_many(:executive_members)
end
