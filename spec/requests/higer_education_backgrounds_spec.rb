require 'spec_helper'

describe "HigerEducationBackgrounds" do
  describe "GET /higer_education_backgrounds" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get higer_education_backgrounds_path
      response.status.should be(200)
    end
  end
end
