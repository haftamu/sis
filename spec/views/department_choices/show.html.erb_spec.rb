require 'spec_helper'

describe "department_choices/show.html.erb" do
  before(:each) do
    @department_choice = assign(:department_choice, stub_model(DepartmentChoice,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
