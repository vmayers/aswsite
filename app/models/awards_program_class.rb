class AwardsProgramClass < ActiveRecord::Base
  belongs_to(:awards_program)
  has_many(:awards_program_category)
  has_one (:hap)
  
  scope :all_hap_classes, where("awards_program_classes.awards_program_id = ?", 2)
  
  def class_program_name
    return classification + " - " + awards_program.acronym
  end
end
