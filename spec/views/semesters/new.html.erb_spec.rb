require 'spec_helper'

describe "semesters/new.html.erb" do
  before(:each) do
    assign(:semester, stub_model(Semester,
      :name => "MyString",
      :short_name => "MyString",
      :academic_calendar_id => 1
    ).as_new_record)
  end

  it "renders new semester form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => semesters_path, :method => "post" do
      assert_select "input#semester_name", :name => "semester[name]"
      assert_select "input#semester_short_name", :name => "semester[short_name]"
      assert_select "input#semester_academic_calendar_id", :name => "semester[academic_calendar_id]"
    end
  end
end
