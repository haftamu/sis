class AdmissionType < ActiveRecord::Base
    belongs_to :enrollment_type
    belongs_to :program_type
end
