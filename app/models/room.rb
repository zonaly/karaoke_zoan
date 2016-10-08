class Room < ActiveRecord::Base
  belongs_to :local
  
   def local_name    
    self.local.name  
   end

end
