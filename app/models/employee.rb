class Employee < ActiveRecord::Base
  belongs_to :local
    
  def local_name    
    self.local.name  
  end
  
  include Loggable 

end
