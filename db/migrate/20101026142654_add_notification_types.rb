class AddNotificationTypes < ActiveRecord::Migration
  def self.up
     NotificationType.create(:name => 'Upcoming')
     NotificationType.create(:name => 'News')
  end

  def self.down
  end
end
