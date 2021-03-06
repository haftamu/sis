require 'spec_helper'

describe "admissions/index.html.erb" do
  before(:each) do
    assign(:admissions, [
      stub_model(Admission,
        :student_id => 1,
        :academic_calendar_id => 1
      ),
      stub_model(Admission,
        :student_id => 1,
        :academic_calendar_id => 1
      )
    ])
  end

  it "renders a list of admissions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
