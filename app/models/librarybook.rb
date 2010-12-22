class Librarybook < ActiveRecord::Base
  
  def self.search(search)
    if search
      # TODO: Check out sphinx for for search
      where('title LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
end
