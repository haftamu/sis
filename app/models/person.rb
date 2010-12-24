class Person < ActiveRecord::Base
    has_one :student

    def full_name
        [first_name,father_name,grand_father_name].join(' ')
    end

end
