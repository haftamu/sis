require 'spec_helper'

describe "course_prerequisites/new.html.erb" do
  before(:each) do
    assign(:course_prerequisite, stub_model(CoursePrerequisite,
      :course_id => 1,
      :prerequisite_id => 1
    ).as_new_record)
  end

  it "renders new course_prerequisite form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_prerequisites_path, :method => "post" do
      assert_select "input#course_prerequisite_course_id", :name => "course_prerequisite[course_id]"
      assert_select "input#course_prerequisite_prerequisite_id", :name => "course_prerequisite[prerequisite_id]"
    end
  end
end
