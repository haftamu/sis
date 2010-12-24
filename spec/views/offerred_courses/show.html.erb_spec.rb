require 'spec_helper'

describe "offerred_courses/show.html.erb" do
  before(:each) do
    @offerred_course = assign(:offerred_course, stub_model(OfferredCourse,
      :course_id => 1,
      :semester_id => 1
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
