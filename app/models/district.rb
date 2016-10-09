class District < ActiveRecord::Base
    has_many :local

    validates :name, presence: true, 
              uniqueness: {case_sensitive: false}
            
    include Loggable  
    
end
