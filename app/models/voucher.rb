class Voucher < ActiveRecord::Base
  belongs_to :room
  belongs_to :user
  belongs_to :local
  belongs_to :employee
end
