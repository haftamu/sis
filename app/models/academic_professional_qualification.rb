class AcademicProfessionalQualification < ActiveRecord::Base
  #validates :certificate_attachment, :presence=> true

belongs_to :admission
end

