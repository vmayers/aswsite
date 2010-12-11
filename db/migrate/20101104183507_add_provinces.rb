class AddProvinces < ActiveRecord::Migration
  def self.up
    Province.create(:name => 'Alberta')
    Province.create(:name => 'British Columnbia')
    Province.create(:name => 'Manitoba')
    Province.create(:name => 'New Brunswick')
    Province.create(:name => 'Newfoundland')
    Province.create(:name => 'North West Territories')
    Province.create(:name => 'Nova Scotia')
    Province.create(:name => 'Ontario')
    Province.create(:name => 'Prince Edward Island')
    Province.create(:name => 'Quebec')
    Province.create(:name => 'Saskatchewan')
    Province.create(:name => 'Yukon')
  end

  def self.down
  end
end
