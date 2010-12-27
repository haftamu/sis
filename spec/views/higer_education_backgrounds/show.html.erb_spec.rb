require 'spec_helper'

describe "higer_education_backgrounds/show.html.erb" do
  before(:each) do
    @higer_education_background = assign(:higer_education_background, stub_model(HigerEducationBackground,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
