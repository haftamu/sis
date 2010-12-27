class FinancialSupport < ActiveRecord::Base
  #validates :support_type, :presence=> true
   belongs_to :admission
end
