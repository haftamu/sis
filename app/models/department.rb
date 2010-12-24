class Department < ActiveRecord::Base
    belongs_to :college
    has_many :courses
    has_many :offerred_courses
    has_many :students

    def college_name
        College.find(self.college_id).name
    end
end
