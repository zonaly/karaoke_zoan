class Local < ActiveRecord::Base
  belongs_to :district
  
    def district_name    
      self.disctrict.name  
    end

  validates :name, presence: true, 
            uniqueness: {case_sensitive: false}
            
  include Loggable 

end
