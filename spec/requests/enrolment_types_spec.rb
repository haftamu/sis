require 'spec_helper'

describe "EnrolmentTypes" do
  describe "GET /enrolment_types" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get enrolment_types_path
      response.status.should be(200)
    end
  end
end
