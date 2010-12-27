require 'spec_helper'

describe "student_qualifications/show.html.erb" do
  before(:each) do
    @student_qualification = assign(:student_qualification, stub_model(StudentQualification,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
