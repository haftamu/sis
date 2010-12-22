require 'spec_helper'

describe Student do
  #pending "add some examples to (or delete) #{__FILE__}"
  context " When created " do
    it " must have a first name " do
      s = Student.new
      s.first_name = "Rahwa"     
      s.first_name.should_not be_blank
    end
    it " must have a middle name " do
      s = Student.new
      s.middle_name = "Mohammed"     
      s.middle_name.should_not be_blank
    end
    it " must have a last name " do
      s = Student.new
      s.last_name = "Mekonnen"     
      s.last_name.should_not be_blank
    end
    it " must have a sex " do
      s = Student.new
      s.sex = "Female"     
      s.sex.should_not be_blank
    end
    it " must have a birth date " do
      s = Student.new
      s.birth_date = Date
      s.birth_date.should_not be_nil
    end
    #1. Test wheter ID is not blank
    #TODO 2. Test wheter ID follows the format
    it " must have a Student ID number " do
      s = Student.new
      s.id_number = "SCR/UR1436/93"
      s.id_number.should_not be_blank
    end
    it " must have a batch year " do
      s = Student.new
      s.batch_year =2003     
      s.batch_year.should_not be_blank
    end
    
  end

end
