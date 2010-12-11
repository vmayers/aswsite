class Dealer < ActiveRecord::Base
  has_many(:dealer_location)
  has_attached_file :image
  
  validates_attachment_size :image, :less_than => 5.megabytes
  validates_attachment_content_type :image, :content_type => ['image/jpeg', 'image/png', 'image/gif']
end
