class OfferredCourse < ActiveRecord::Base
    belongs_to :course
    belongs_to :semester
    def course_title
        self.course.title
    end    
end
