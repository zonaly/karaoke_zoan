class Song < ActiveRecord::Base
  belongs_to :artist
  
  def artist_name    
    self.artist.name  
  end
  
  validates :name, presence: true, 
            uniqueness: {case_sensitive: false}
            
  include Loggable 
end
