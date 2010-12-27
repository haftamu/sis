require 'spec_helper'

describe "student_publications/index.html.erb" do
  before(:each) do
    assign(:student_publications, [
      stub_model(StudentPublication,
        :student_id => 1
      ),
      stub_model(StudentPublication,
        :student_id => 1
      )
    ])
  end

  it "renders a list of student_publications" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
