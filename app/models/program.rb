class Program < ActiveRecord::Base
    belongs_to :enrolment_type
    belongs_to :program_type

    def full_program_name
        "Test"
    end
end
