class Event < ActiveRecord::Base
  belongs_to :local
  belongs_to :district
  
  def district_name    
      self.disctrict.name  
  end

  def local_name    
    self.local.name  
  end
  
  include Loggable 

end
