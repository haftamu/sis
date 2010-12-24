require 'spec_helper'

describe "offerred_courses/index.html.erb" do
  before(:each) do
    assign(:offerred_courses, [
      stub_model(OfferredCourse,
        :course_id => 1,
        :semester_id => 1
      ),
      stub_model(OfferredCourse,
        :course_id => 1,
        :semester_id => 1
      )
    ])
  end

  it "renders a list of offerred_courses" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
