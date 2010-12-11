class Meeting < ActiveRecord::Base
  scope :upcoming, lambda {where("meeting_date >= ?", Time.zone.now) }
  scope :orderdesc, order("meeting_date desc")
end
