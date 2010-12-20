class Transfer < ActiveRecord::Base
    
    belongs_to :students
    
  def self.search(student_id)
    Student.where(['student_id = ?', id])
  end
  
  
  validates :transfer_type, :presence => true
  #validates :transfered_university_name, :presence => true
  validates :transfered_faculty_name, :presence => true
  validates :transfered_department_name, :presence => true
  validates :transfered_enrollment, :presence => true
  validates :effective_as_of_semester, :presence => true
  validates :transfered_program, :presence => true
  validates :effective_as_of_ac_year, :presence => true
  validates :transfer_reason, :presence => true
 # validates :effective_as_of_semester, :numericality => {:less_than_or_equal_to => 3}
  validates_inclusion_of :effective_as_of_semester, :in => 1..3, :message =>"U should insert 1 or 2, or 3"
  validates :effective_as_of_ac_year, :numericality => 1970..2020
end
