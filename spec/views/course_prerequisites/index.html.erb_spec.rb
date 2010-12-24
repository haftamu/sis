require 'spec_helper'

describe "course_prerequisites/index.html.erb" do
  before(:each) do
    assign(:course_prerequisites, [
      stub_model(CoursePrerequisite,
        :course_id => 1,
        :prerequisite_id => 1
      ),
      stub_model(CoursePrerequisite,
        :course_id => 1,
        :prerequisite_id => 1
      )
    ])
  end

  it "renders a list of course_prerequisites" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
