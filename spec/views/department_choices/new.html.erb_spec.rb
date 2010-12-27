require 'spec_helper'

describe "department_choices/new.html.erb" do
  before(:each) do
    assign(:department_choice, stub_model(DepartmentChoice,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new department_choice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => department_choices_path, :method => "post" do
      assert_select "input#department_choice_student_id", :name => "department_choice[student_id]"
    end
  end
end
