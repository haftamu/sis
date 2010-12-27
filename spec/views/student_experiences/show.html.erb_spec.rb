require 'spec_helper'

describe "student_experiences/show.html.erb" do
  before(:each) do
    @student_experience = assign(:student_experience, stub_model(StudentExperience,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
