class Product < ActiveRecord::Base
  belongs_to :local
  
  has_many :detail_orders
  has_many :details_vouchers, through::details_orders 

  def local_name    
    self.local.name  
  end

  validates :name, presence: true, 
            uniqueness: {case_sensitive: false} 
  validates :category, presence: true
  
  include Loggable 

end
