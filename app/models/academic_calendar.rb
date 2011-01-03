class AcademicCalendar < ActiveRecord::Base
    has_many :semesters
    has_many :admissions
    validates :start_date,  :presence => true
    validates :end_date,    :presence => true


    def name
      [
        [
          '(',
          [
            start_date.year,end_date.year
          ].join('/'),
          ')'
        ].join(' '),
        start_date.to_formatted_s(:long),
        end_date.to_formatted_s(:long)
      ].join(' - ')
    end

end
