require 'spec_helper'

describe "StudentReferees" do
  describe "GET /student_referees" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get student_referees_path
      response.status.should be(200)
    end
  end
end
