class AwardsProgram < ActiveRecord::Base
  has_many(:awards_program_class)
  has_many(:awards_program_species)
  
end
