class Campu < ActiveRecord::Base
    has_many :colleges
    def total_colleges
        College.where('campus_id = ?',self.id).count
    end
    def colleges_in_this_campus
        Colleges.where('campus_id=?',self.id)
    end
end
