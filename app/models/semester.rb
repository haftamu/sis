class Semester < ActiveRecord::Base
    belongs_to :academic_calendar
    def full_semester_name
        ['('+self.academic_calendar.name+')',self.name].join(' - ')
    end
end
