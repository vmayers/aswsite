class AwardsProgramClass < ActiveRecord::Base
  belongs_to(:awards_program)
  
  has_many(:awards_program_category)
  
  def class_program_name
    return classification + " - " + awards_program.acronym
  end
end
