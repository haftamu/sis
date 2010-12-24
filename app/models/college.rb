class College < ActiveRecord::Base
    belongs_to :campu
    has_many :departments

    def campus_name
        Campu.find(self.campus_id).name
    end
end
