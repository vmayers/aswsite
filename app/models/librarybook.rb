class Librarybook < ActiveRecord::Base
  
  def self.search(search)
    if search
      # TODO: Check out sphinx for for search
      where('LOWER(title) LIKE ?', "%#{search.downcase}%")
    else
      scoped
    end
  end
  
end
