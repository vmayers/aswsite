class AddAwardPrograms < ActiveRecord::Migration
  def self.up
    AwardsProgram.create(:name => 'Breeders Award Program', :acronym => 'BAP')
    AwardsProgram.create(:name => 'Aquatic Horticulture Award Program', :acronym => 'HAP')
  end

  def self.down
  end
end
