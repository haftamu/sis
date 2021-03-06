class Student < ActiveRecord::Base
    belongs_to :person
    belongs_to :department
    has_one :admission
    after_initialize :init_person
    after_save :save_person
    
    def init_person
      if(self.person_id.nil?)
        self.person = Person.new
      end
    end

    def save_person
      self.person.save
    end
    
    def person_attributes=(person_attributes)
      person_attributes.each do |attributes|
        person.build(attributes)
      end
    end
end
