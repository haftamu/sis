require 'spec_helper'

describe "educational_backgrounds/index.html.erb" do
  before(:each) do
    assign(:educational_backgrounds, [
      stub_model(EducationalBackground,
        :student_id => 1
      ),
      stub_model(EducationalBackground,
        :student_id => 1
      )
    ])
  end

  it "renders a list of educational_backgrounds" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
