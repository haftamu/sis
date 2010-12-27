require 'spec_helper'

describe "enrollment_types/edit.html.erb" do
  before(:each) do
    @enrollment_type = assign(:enrollment_type, stub_model(EnrollmentType,
      :name => "MyString",
      :mode => "MyString"
    ))
  end

  it "renders the edit enrollment_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => enrollment_type_path(@enrollment_type), :method => "post" do
      assert_select "input#enrollment_type_name", :name => "enrollment_type[name]"
      assert_select "input#enrollment_type_mode", :name => "enrollment_type[mode]"
    end
  end
end
