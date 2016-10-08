class District < ActiveRecord::Base
    has_many :local
    include Loggable 
end
