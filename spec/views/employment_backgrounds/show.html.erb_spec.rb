require 'spec_helper'

describe "employment_backgrounds/show.html.erb" do
  before(:each) do
    @employment_background = assign(:employment_background, stub_model(EmploymentBackground,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
