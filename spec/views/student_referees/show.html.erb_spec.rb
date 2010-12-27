require 'spec_helper'

describe "student_referees/show.html.erb" do
  before(:each) do
    @student_referee = assign(:student_referee, stub_model(StudentReferee,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
