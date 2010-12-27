require 'spec_helper'

describe "student_publications/show.html.erb" do
  before(:each) do
    @student_publication = assign(:student_publication, stub_model(StudentPublication,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
