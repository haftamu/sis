require 'spec_helper'

describe "offerred_courses/edit.html.erb" do
  before(:each) do
    @offerred_course = assign(:offerred_course, stub_model(OfferredCourse,
      :course_id => 1,
      :semester_id => 1
    ))
  end

  it "renders the edit offerred_course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => offerred_course_path(@offerred_course), :method => "post" do
      assert_select "input#offerred_course_course_id", :name => "offerred_course[course_id]"
      assert_select "input#offerred_course_semester_id", :name => "offerred_course[semester_id]"
    end
  end
end
