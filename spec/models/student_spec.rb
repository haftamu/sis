require 'spec_helper'

describe Student do
  #pending "add some examples to (or delete) #{__FILE__}"
  context "is valid when " do
    it "has a student id " do 
      s = Student.new 
      s.id_number = "SCR/1436/93"
      s.id_number.should_not be_blank
    end
    it " must have a batch year " do
      s = Student.new
      s.batch_year =2003     
      s.batch_year.should_not be_blank
    end
    
  end

end
