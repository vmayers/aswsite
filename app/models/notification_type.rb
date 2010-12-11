class NotificationType < ActiveRecord::Base
  has_many(:notification) 
end