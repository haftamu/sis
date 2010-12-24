class CoursePrerequisite < ActiveRecord::Base
    has_and_belongs_to_many :courses

    def main_course
        Course.find(self.course_id).title_with_code
    end
    def prerequisite_course
        Course.find(self.prerequisite_id).title_with_code
    end
end
