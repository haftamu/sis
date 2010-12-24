require 'spec_helper'

describe "course_prerequisites/edit.html.erb" do
  before(:each) do
    @course_prerequisite = assign(:course_prerequisite, stub_model(CoursePrerequisite,
      :course_id => 1,
      :prerequisite_id => 1
    ))
  end

  it "renders the edit course_prerequisite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_prerequisite_path(@course_prerequisite), :method => "post" do
      assert_select "input#course_prerequisite_course_id", :name => "course_prerequisite[course_id]"
      assert_select "input#course_prerequisite_prerequisite_id", :name => "course_prerequisite[prerequisite_id]"
    end
  end
end
