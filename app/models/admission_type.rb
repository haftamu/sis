class AdmissionType < ActiveRecord::Base
    has_many :enrolment_types
    has_many :program_types
end
