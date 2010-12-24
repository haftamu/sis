require 'spec_helper'

describe "OfferredCourses" do
  describe "GET /offerred_courses" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get offerred_courses_path
      response.status.should be(200)
    end
  end
end
