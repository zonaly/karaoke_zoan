class Employee < ActiveRecord::Base
  belongs_to :local
    
  def local_name    
    self.local.name 
  end
  
  validates :name,  presence: true, 
            uniqueness: {case_sensitive: false}
            
  include Loggable 

end
