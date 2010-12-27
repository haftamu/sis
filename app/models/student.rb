class Student < ActiveRecord::Base
    belongs_to :person
    belongs_to :department
    has_one :admission

    def initialize
      self.person = Person.new
    end
    def person_attributes=(person_attributes)
      person_attributes.each do |attributes|
        person.build(attributes)
      end
    end
end
