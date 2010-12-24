class AcademicCalendar < ActiveRecord::Base
    has_many :semesters
    validates :start_date,  :presence => true
    validates :end_date,    :presence => true
    

    def name
        [start_date.year,end_date.year].join('/')
    end
    
end
