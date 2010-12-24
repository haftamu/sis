class Course < ActiveRecord::Base
    has_and_belongs_to_many :course_prerequisites
    belongs_to :department

    def title_with_code
        [code, title].join(' - ')
    end
end
