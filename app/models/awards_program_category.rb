class AwardsProgramCategory < ActiveRecord::Base
  belongs_to(:awards_program_class)
  has_many(:awards_program_species)
  
  def categroy_program_name
    return name + " - " + awards_program_class.class_program_name
  end
end
