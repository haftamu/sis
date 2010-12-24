require 'spec_helper'

describe "program_types/new.html.erb" do
  before(:each) do
    assign(:program_type, stub_model(ProgramType,
      :name => "MyString",
      :mode => "MyString"
    ).as_new_record)
  end

  it "renders new program_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => program_types_path, :method => "post" do
      assert_select "input#program_type_name", :name => "program_type[name]"
      assert_select "input#program_type_mode", :name => "program_type[mode]"
    end
  end
end
