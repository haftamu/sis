require 'spec_helper'

describe "employment_backgrounds/index.html.erb" do
  before(:each) do
    assign(:employment_backgrounds, [
      stub_model(EmploymentBackground,
        :student_id => 1
      ),
      stub_model(EmploymentBackground,
        :student_id => 1
      )
    ])
  end

  it "renders a list of employment_backgrounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
