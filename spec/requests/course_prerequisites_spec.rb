require 'spec_helper'

describe "CoursePrerequisites" do
  describe "GET /course_prerequisites" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get course_prerequisites_path
      response.status.should be(200)
    end
  end
end
