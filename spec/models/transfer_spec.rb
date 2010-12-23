require 'spec_helper'

describe Transfer do
 # pending "add some examples to (or delete) #{__FILE__}"
       context " When created " do
     it " Transfer type must exist fail" do # This test case to make sure bed fail when Bed_Number is not provided
        b = Transfer.new
        b.transfer_type=""
        b.transfer_type.should_not be_blank 
     end
     it " Transfer type must exist pass" do # This test case to make sure bed fail when Bed_Number is not provided
        b = Transfer.new
        b.transfer_type="wfkdj"
        b.transfer_type.should_not be_blank 
     end
        end
end
