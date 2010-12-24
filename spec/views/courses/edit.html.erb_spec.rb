require 'spec_helper'

describe "courses/edit.html.erb" do
  before(:each) do
    @course = assign(:course, stub_model(Course,
      :title => "MyString",
      :code => "MyString",
      :credit_hour => 1.5,
      :description => "MyText",
      :department_id => 1
    ))
  end

  it "renders the edit course form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => course_path(@course), :method => "post" do
      assert_select "input#course_title", :name => "course[title]"
      assert_select "input#course_code", :name => "course[code]"
      assert_select "input#course_credit_hour", :name => "course[credit_hour]"
      assert_select "textarea#course_description", :name => "course[description]"
      assert_select "input#course_department_id", :name => "course[department_id]"
    end
  end
end
