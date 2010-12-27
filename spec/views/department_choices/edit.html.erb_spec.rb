require 'spec_helper'

describe "department_choices/edit.html.erb" do
  before(:each) do
    @department_choice = assign(:department_choice, stub_model(DepartmentChoice,
      :student_id => 1
    ))
  end

  it "renders the edit department_choice form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => department_choice_path(@department_choice), :method => "post" do
      assert_select "input#department_choice_student_id", :name => "department_choice[student_id]"
    end
  end
end
