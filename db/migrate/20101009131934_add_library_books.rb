class AddLibraryBooks < ActiveRecord::Migration
  def self.up
    Librarybook.delete_all
    
    Librarybook.create(:title => 'Tanganyikan Cichlids in their Natural Habitat Vol 2', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Enjoying Cichlids', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Aquarium Designs Inspried by Nature', :author => 'Peter Hiscock')
    Librarybook.create(:title => 'Cichlid Yearbook Vol. 3 ', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Cichlid Yearbook Vol. 4 ', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Cichlid Yearbook Vol. 5', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Cichlid Yearbook Vol. 6', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Back to Nature Guide to Tanganyika', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Back to Nature Guide to Malawi', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Malawi Cichlids Natural in their Natural Habitat Vol. 2', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Angel Fish', :author => 'Braz Walker', :publisher => 'T.FH. Pub')
    Librarybook.create(:title => 'Tropical Fish')
    Librarybook.create(:title => 'Baensch Atlas Vol. 1')
    Librarybook.create(:title => 'Baensch Atlas Vol. 2')
    Librarybook.create(:title => 'Baensch Atlas Vol. 3')
    Librarybook.create(:title => 'Cichlids a Complete Intro', :author => 'Dr. Robert J. Goldstein')
    Librarybook.create(:title => 'The Cichlid Aquarium', :author => 'Loiselle')
    Librarybook.create(:title => 'Encyclopedia of Aquarium Plants', :author => 'Peter Hiscock')
    Librarybook.create(:title => 'A Practical Guide to Tropical Fish', :author => 'Richard Crow & Dave Keeley, Bramley Books')
    Librarybook.create(:title => 'The Cichlid Fishes', :author => 'George W. Barlow')
    Librarybook.create(:title => 'Aquarium Plants', :author => 'Christel Kasselmann')
    Librarybook.create(:title => 'Corydoras', :author => 'Werner Seub')
    Librarybook.create(:title => 'Damselfishes of the World', :author => 'Dr. Gerald R. Allen')
    Librarybook.create(:title => 'The Instant Ocean Handbook ')
    Librarybook.create(:title => 'The Sea Water Manual', :author => 'Edmund J. Mowka, Jr.')
    Librarybook.create(:title => 'The Complete Aquarium Logbook', :author => 'Kevin W. Boyd', :publisher => 'TetraPress')
    Librarybook.create(:title => 'Fish Anatomy, Physiology and Nutrition', :publisher => 'TetraPress')
    Librarybook.create(:title => 'Labyrinth Fish the Bubble Nest Builders', :author => 'Horst Linke', :publisher => 'Tetra')
    Librarybook.create(:title => 'Livebearing Fishes ', :author => 'Peter W. Scott')
    Librarybook.create(:title => 'Fancy Goldfishes', :author => 'Dr. Chris Andrews')
    Librarybook.create(:title => 'Fish Breeding', :author => 'Dr. Chris Andrews', :publisher => 'TetraPress')
    Librarybook.create(:title => 'Communities Fishes', :author => 'Dick Millis')
    Librarybook.create(:title => 'The Health Aquarium', :author => 'Neville Carrington', :publisher => 'TetraPress')
    Librarybook.create(:title => 'Aquarium Fish Breeding', :author => 'Jay Hemdal')
    Librarybook.create(:title => 'Aquarium Plants Manual', :author => 'Sheurmann')
    Librarybook.create(:title => 'Fish Health', :author => 'Terry Fairfield')
    Librarybook.create(:title => 'Lake Malawi Cichlids', :author => 'Mark Phillip Smith', :publisher => 'Barrons')
    Librarybook.create(:title => 'Lake Tanganyika Cichlid Aquarium', :author => 'Georg Zurlo', :publisher => 'Barrons')
    Librarybook.create(:title => 'Lake Victoria Basin Cichlids', :author => 'Smith')
    Librarybook.create(:title => 'Marine Reef Aquarium Handbook', :author => 'Dr. Robert J. Goldstein')
    Librarybook.create(:title => 'Natural Water Gardens ', :author => 'Philip Swindells', :publisher => 'Barrons')
    Librarybook.create(:title => 'Pond Plants and Cultivation', :author => 'Philip Swindells', :publisher => 'Barrons')
    Librarybook.create(:title => 'Rainbow Fish', :author => 'Gunther Schmida', :publisher => 'Barrons')
    Librarybook.create(:title => 'Tetras and Other Characins', :author => 'Mark Phillip Smith', :publisher => 'Barrons')
    Librarybook.create(:title => 'The Barbs Aquarium', :author => 'Gary Elseon & Oliver  Lucanus', :publisher => 'Barrons')
    Librarybook.create(:title => 'The Water Garden Design Book', :author => 'Yvonne Rees and Peter May')
    Librarybook.create(:title => 'Your First Marine Aquarium ', :author => 'Tullock')
    Librarybook.create(:title => 'Breeding Aquarium Fishes', :author => 'Dr. Herbert R. Axelrod', :publisher => 'T.F.H. Pub.')
    Librarybook.create(:title => 'Cure and Recognize Aquarium Fish Diseases', :author => 'Dr. Gottfries Schubert', :publisher => 'T.F.H. Pub.')
    Librarybook.create(:title => 'Tropical Fish', :author => 'Peter Stadelmann', :publisher => 'Barrons')
    Librarybook.create(:title => 'Guppies, Mollies, Platys', :author => 'Harro Hieronimus', :publisher => 'Barrons')
    Librarybook.create(:title => 'Malawi Cichlids', :author => 'David Boruchowitz', :publisher => 'T.F.H. Pub.')
    Librarybook.create(:title => 'Introducing Cichlids', :author => 'John A. Dawes')
    Librarybook.create(:title => 'Freshwater Aquarium Fishes', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'A Cichlid Travelogue - Madagascar - VHS', :author => ' Dr. Paul Loiselle')
    Librarybook.create(:title => 'VHS - Pike Cichlids', :author => 'Dr. Wayne Liebel')
    Librarybook.create(:title => 'VHS - A Fish Keepers Guide to SA Cichlids', :author => 'Dr. Wayne Liebel')
    Librarybook.create(:title => 'Algae - A problem solver guide')
    Librarybook.create(:title => 'DVD - Nicaragua (Cichlids from the crater)', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Rasboras', :author => 'Dr. Martin R. Brittan', :publisher => 'T.F.H. Pub.')
    Librarybook.create(:title => 'VHS Lake Victoria Research', :author => 'Les Kaufman', :publisher => 'ACA Conventions')
    Librarybook.create(:title => 'Jumbo Fishes')
    Librarybook.create(:title => 'Midas Cichlid Observations in Nicaragua')
    Librarybook.create(:title => 'Angelfishes & Butterflyfishes', :author => 'Scott W. Michael')
    Librarybook.create(:title => 'The Cichlid Diversity of Lake Malawi', :author => 'Joe Snoeks')
    Librarybook.create(:title => 'Fish Atlas', :author => 'Dr. Axelrod')
    Librarybook.create(:title => 'The Aquarium Plant Handbook', :author => 'Tahaski Amano')
    Librarybook.create(:title => 'Tropical Fish', :author => 'Tropical Fish Hobbyist Magazine')
    Librarybook.create(:title => "A Beginner\'s Guide to Tropical Fish", :author => 'Herbert Richards', :publisher => 'T.F.H. Pub')
    Librarybook.create(:title => 'Back to Nature - Guide to Discus', :author => 'Dick Au')
    Librarybook.create(:title => 'Tropical Aquarium Fishes', :author => 'Dick Mills & Dr. Gwynne Vevers')
    Librarybook.create(:title => 'Baensh Catfish Atlas')
    Librarybook.create(:title => 'Bettas', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Catfish', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Killifish', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Buntbarsche Bulletin December 2005')
    Librarybook.create(:title => '500 Ways to Be a Better Saltwater keeper')
    Librarybook.create(:title => 'South American Dwarf Cichlids')
    Librarybook.create(:title => 'The Betta Handbook', :author => 'Robert J. Goldstein')
    Librarybook.create(:title => 'Discus Fish', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Clownfish and Sea Anemones', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Corals', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Angelfish', :publisher => "Barron\'s")
    Librarybook.create(:title => 'Bettas. . .in color', :author => 'W.L. Whitern')
    Librarybook.create(:title => 'Loaches', :publisher => 'T.F.H. Pub')
    Librarybook.create(:title => 'Aquarium Fish Handbook', :author => 'Dick Millis & Derek Lambert')
    Librarybook.create(:title => 'Back to Nature Guide to Tanganyika Cichilds', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'DVD - Malawi Cichlids Feeding Behavior DVD', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'Malawi Cichlids in their natural habitat 4th Edition', :author => 'Ad Konings', :publisher => 'Cichlid Press')
    Librarybook.create(:title => 'VHS - Cichlids of Lake Malawi', :author => 'David Herlong', :publisher => '1993 ACA Convention')
    
  end

  def self.down
  end
end
