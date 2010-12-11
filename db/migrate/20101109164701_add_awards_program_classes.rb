class AddAwardsProgramClasses < ActiveRecord::Migration
  def self.up
    @hap = AwardsProgram.where("acronym = ?", "HAP").first
    @bap = AwardsProgram.where("acronym = ?", "BAP").first
    @hap_id = @hap.id
    @bap_id = @bap.id
    
    AwardsProgramClass.create(:awards_program_id => @bap_id, :classification => 'Class A', :points => 5)
    AwardsProgramClass.create(:awards_program_id => @bap_id, :classification => 'Class B', :points => 10)
    AwardsProgramClass.create(:awards_program_id => @bap_id, :classification => 'Class C', :points => 15)
    AwardsProgramClass.create(:awards_program_id => @bap_id, :classification => 'Class D', :points => 20)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class A', :points => 5)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class B', :points => 10)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class C', :points => 15)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class D', :points => 20)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class E - Flowering', :points => 20)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class F - Seeds', :points => 20)
    AwardsProgramClass.create(:awards_program_id => @hap_id, :classification => 'Class G - Sexual Reproduction', :points => 20)
  end

  def self.down
  end 
end
