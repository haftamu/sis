class Student < ActiveRecord::Base
    belongs_to :person
    belongs_to :department

    def initialize
      self.person = Person.new
    end
    
end
