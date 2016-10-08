class DetailOrder < ActiveRecord::Base
  belongs_to :order
  belongs_to :product
  belongs_to :song
end
