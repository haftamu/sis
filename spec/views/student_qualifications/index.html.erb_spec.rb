require 'spec_helper'

describe "student_qualifications/index.html.erb" do
  before(:each) do
    assign(:student_qualifications, [
      stub_model(StudentQualification,
        :student_id => 1
      ),
      stub_model(StudentQualification,
        :student_id => 1
      )
    ])
  end

  it "renders a list of student_qualifications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
