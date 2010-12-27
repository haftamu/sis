class EnrollmentType < ActiveRecord::Base
  has_many :admission_types
  def full_name
    [name,mode].join(' ')
  end
end
