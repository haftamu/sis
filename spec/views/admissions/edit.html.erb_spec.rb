require 'spec_helper'

describe "admissions/edit.html.erb" do
  before(:each) do
    @admission = assign(:admission, stub_model(Admission,
      :student_id => 1,
      :academic_calendar_id => 1
    ))
  end

  it "renders the edit admission form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admission_path(@admission), :method => "post" do
      assert_select "input#admission_student_id", :name => "admission[student_id]"
      assert_select "input#admission_academic_calendar_id", :name => "admission[academic_calendar_id]"
    end
  end
end
