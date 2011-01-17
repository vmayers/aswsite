class AddNotifications < ActiveRecord::Migration
  def self.up
    Notification.create(:notification_type_id => 2, :title => "General Meeting Time Change", :message => "Starting with our January meeting, the ASW monthly general meetings will now begin at 1:00pm sharp! Doors will open at 12:15pm.<br/><br/>Any help with setting up tables is always appreciated!", :user_id => 1)
    Notification.create(:notification_type_id => 1, :title => "Next Meeting - Sunday February 15th, 2009", :message => "Please join us at our next meeting for speaker Charley Grimes, one of North America's most accomplished aquarists. His topic will be Ponds. Visit the [link=meetings.php]Meetings page[/link] for more details, including where and when the meetings are!<br/><br/>Our raffle prize for this meeting will be a complete 10 gallon planted tank kit. The kit was graciously donated by Petland Pembina and stocked by Spencer Jack of The aFISHionados. It can be viewed (and picked up by the winner) at [link=http://cichlaholic.com/contact.html]The aFISHionados outlet store[/link].<br/><br/>Charley will also be giving his famous 'Dead Fish Talk' at The aFISHionados store on [b]Saturday, February 14th at 7PM[/b].  This event is open to ASW members and their spouses/significant others, so hurry and [link=membership.html]buy/renew your membership![/link]", :user_id => 1)
  end
    
  def self.down
  end
end
