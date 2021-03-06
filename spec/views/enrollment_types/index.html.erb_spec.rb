require 'spec_helper'

describe "enrollment_types/index.html.erb" do
  before(:each) do
    assign(:enrollment_types, [
      stub_model(EnrollmentType,
        :name => "Name",
        :mode => "Mode"
      ),
      stub_model(EnrollmentType,
        :name => "Name",
        :mode => "Mode"
      )
    ])
  end

  it "renders a list of enrollment_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Mode".to_s, :count => 2
  end
end
