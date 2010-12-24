require 'spec_helper'

describe "course_prerequisites/show.html.erb" do
  before(:each) do
    @course_prerequisite = assign(:course_prerequisite, stub_model(CoursePrerequisite,
      :course_id => 1,
      :prerequisite_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
