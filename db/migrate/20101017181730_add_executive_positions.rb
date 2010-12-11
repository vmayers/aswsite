class AddExecutivePositions < ActiveRecord::Migration
  def self.up
    ExecutivePosition.create(:position_name => 'President',          :voting_position => true,   :email => 'president@asw.ca')
    ExecutivePosition.create(:position_name => 'Vice Presidnet',     :voting_position => true,   :email => 'vp@asw.ca')
    ExecutivePosition.create(:position_name => 'Secretary',          :voting_position => true,   :email => 'secretary@asw.ca')
    ExecutivePosition.create(:position_name => 'Treasurer',          :voting_position => true,   :email => 'treasurer@asw.ca')
    ExecutivePosition.create(:position_name => 'Membership',         :voting_position => false,  :email => 'membership@asw.ca')
    ExecutivePosition.create(:position_name => 'Exchange Chair',     :voting_position => false,  :email => 'exchange@asw.ca')
    ExecutivePosition.create(:position_name => 'BAP Chair',          :voting_position => false,  :email => 'bap@asw.ca')
    ExecutivePosition.create(:position_name => 'HAP Chair',          :voting_position => false,  :email => 'hap@asw.ca')
    ExecutivePosition.create(:position_name => 'Editor',             :voting_position => false,  :email => 'editor@asw.ca')
    ExecutivePosition.create(:position_name => 'Auction Chair',      :voting_position => false,  :email => 'auction@asw.ca')
    ExecutivePosition.create(:position_name => 'Events Coordinator', :voting_position => false,  :email => 'events@asw.ca')
    ExecutivePosition.create(:position_name => 'Webmaster',          :voting_position => false,  :email => 'webmaster@asw.ca') 
  end

  def self.down
  end
end
