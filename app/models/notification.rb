class Notification < ActiveRecord::Base
  belongs_to(:notification_type)
  belongs_to(:user)
  
  scope :upcoming, where("notification_type_id = ?",  1)
  scope :news, where("notification_type_id = ?", 2)
  
end
