require 'spec_helper'

describe "admissions/show.html.erb" do
  before(:each) do
    @admission = assign(:admission, stub_model(Admission,
      :student_id => 1,
      :academic_calendar_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
