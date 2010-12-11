class AddAwardsProgramSpecies < ActiveRecord::Migration
  def self.up
    # Get all categories
    categories = AwardsProgramCategory.all
    
    # CLASS A - BAP
    #------------------------------------------------------------------------------------------------------
    class_categories = categories.reject {|c| c.awards_program_class.classification != 'Class A'}
    class_categories = class_categories.reject {|c| c.awards_program_class.awards_program.acronym != 'BAP'}
    
    # Add Livebearers entries
    category_id = class_categories.reject {|c| c.name != 'Livebearers'}.first.id
    
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'All species not listed elsewhere')
    
    # Add Anabantoids entries
     category_id = class_categories.reject {|c| c.name != 'Anabantoids'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Betta splendens')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Macropodus opercularis')
    
    # Add Barbs and relatives entries
     category_id = class_categories.reject {|c| c.name != 'Barbs and relatives'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Brachydanio')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Capoeta titteya')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Danio not listed elsewhere (Class B)')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Tanichthys albonubes')
    
    # Add Rift Lake Cichlids entries
     category_id = class_categories.reject {|c| c.name != 'Rift Lake Cichlids'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Haplochromis')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Iodotropheus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pundamilia')
    
    # Add New World Cichlids entries
     category_id = class_categories.reject {|c| c.name != 'New World Cichlids'}.first.id

    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Aequidens')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Amatitlania')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Archocentrus')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Cichlasoma')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => '\'Geophagus\' brasiliensis & G. steindachneri')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Herostilapia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Herichthys carpinte & H. cyanoguttatum')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Krobia')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Laetacara')
    AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Thorichthys meeki')
    
     # Add Cichlids (Others) entries
       category_id = class_categories.reject {|c| c.name != 'Cichlids (Others)'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Astatoreochromis')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Astatotilapia')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Hemichromis not listed elsewhere (Class C)')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pseudocranilabrus')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pelvicachromis pulcher')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Pyxichromis')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Oreochromis')
      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Satherodon')
      
      # Add Invertebrates entries
      category_id = class_categories.reject {|c| c.name != 'Invertebrates'}.first.id

      AwardsProgramSpecies.create(:awards_program_category_id => category_id, :name => 'Neocaridina')
  end

  def self.down
  end
end
