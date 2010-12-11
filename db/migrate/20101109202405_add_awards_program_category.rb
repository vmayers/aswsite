class AddAwardsProgramCategory < ActiveRecord::Migration
  def self.up
    # Get all of the Classes
    classes = AwardsProgramClass.all
    bap = AwardsProgram.where("acronym = ?", "BAP").first
    bap_id = bap.id
    
    #Add entries for Class A BAP
    classification = classes.reject {|c| c.classification != 'Class A'}
    classification = classification.reject {|c| c.awards_program_id != bap_id}
    class_id = classification.first.id
    
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Livebearers')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Anabantoids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Barbs and relatives')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Rift Lake Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'New World Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Cichlids (Others)')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Invertebrates')
    
    #Add entries for Class B BAP
    classification = classes.reject {|c| c.classification != 'Class B'}
    classification = classification.reject {|c| c.awards_program_id != bap_id}
    class_id = classification.first.id
    
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Livebearers')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Anabantoids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Barbs and relatives')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Rift Lake Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'New World Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Cichlids (Others)')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Characins')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Killifish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Catfish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Rainbowfish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Other Species')
    
    #Add entries for Class C BAP
    classification = classes.reject {|c| c.classification != 'Class C'}
    classification = classification.reject {|c| c.awards_program_id != bap_id}
    class_id = classification.first.id
    
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Livebearers')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Anabantoids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Rift Lake Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'New World Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Cichlids (Others)')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Characins')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Killifish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Catfish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Rainbowfish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Other Species')
    
    #Add entries for Class D BAP
    classification = classes.reject {|c| c.classification != 'Class D'}
    classification = classification.reject {|c| c.awards_program_id != bap_id}
    class_id = classification.first.id
    
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Livebearers')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Anabantoids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Barbs and relatives')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Rift Lake Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'New World Cichlids')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Characins')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Catfish')
    AwardsProgramCategory.create(:awards_program_class_id => class_id, :name => 'Other Species')
  end

  def self.down
  end
end
