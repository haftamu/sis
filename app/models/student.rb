class Student < ActiveRecord::Base
  #validates :student_id, :presence => true
  belongs_to :person
  composed_of :person, 
              :class_name => "Person",
              :mapping => [[:first_name, :middle_name, :last_name]]
  has_many :transfers
  #def initialize(first_name, middle_name, last_name, sex, birth_date)
  #    @first_name  = "Yared",
      
   #   @middle_name = "Getachew"
    #  @last_name   = "Tessema"
  #end
  validates :transfered_university_name, :presence => true
  validates :transfered_faculty_name, :presence => true
  validates :transfered_department_name, :presence => true
  validates :transfered_enrollment, :presence => true
  validates :effective_as_of_semester, :presence => true
  validates :transfered_program, :presence => true
  validates :effective_as_of_ac_year, :presence => true
  validates :transfer_reason, :presence => true
  validates :effective_as_of_semester, :numericality => {:less_than_or_equal_to => 3}
  
 # def self.save_student
  #  student=Student.new
   # student.first_name="Abebe"
    #student.middle_name="Bekelle"
    #student.middle_name="Belete"
    #student.save
  #end
  #def self.display
   #   self.save_teacher
    #  all=Teacher.all
     # return all
 #end

end
