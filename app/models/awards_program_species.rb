class AwardsProgramSpecies < ActiveRecord::Base
  belongs_to(:awards_program_category)
  belongs_to(:awards_program)
  
  validates_presence_of :awards_program_category, :if => :should_validate_awards_program_category?
  validates_presence_of :awards_program, :if => :should_validate_awards_program?
  
  private 
    def should_validate_awards_program_category?
      awards_program == nil
    end
  
    def should_validate_awards_program?
      awards_program_category == nil
    end
end
