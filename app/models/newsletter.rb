class Newsletter < ActiveRecord::Base
  has_attached_file :pdf
  
  validates_attachment_presence :pdf
  validates_attachment_content_type :pdf, :content_type => ['application/pdf', 'application/x-pdf']
end
