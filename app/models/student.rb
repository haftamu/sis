class Student < ActiveRecord::Base
  #validates :student_id, :presence => true
  belongs_to :person
  composed_of :person, 
              :class_name => "Person",
              :mapping => [[:first_name, :middle_name, :last_name]]
  has_many :transfers
  def initialize(first_name, middle_name, last_name, sex, birth_date)
      @first_name  = "Yared",
      
      @middle_name = "Getachew"
      @last_name   = "Tessema"
  end
  
  


end
