class Order < ActiveRecord::Base
  belongs_to :local
  belongs_to :room
  belongs_to :user
  
  def local_name    
    self.local.name  
  end

  def room_name    
    self.room.name  
  end

  def user_name    
    self.user.name  
  end

end
