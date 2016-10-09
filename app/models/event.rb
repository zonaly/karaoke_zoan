class Event < ActiveRecord::Base
  belongs_to :local
  belongs_to :district
  
  def district_name 
      self.district_name 
  end

  def local_name   
    self.local_name
  end

  validates :name, presence: true, 
          uniqueness: {case_sensitive: false}
            
  include Loggable 
  
end
