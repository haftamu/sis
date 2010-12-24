require 'spec_helper'

describe "program_types/edit.html.erb" do
  before(:each) do
    @program_type = assign(:program_type, stub_model(ProgramType,
      :name => "MyString",
      :mode => "MyString"
    ))
  end

  it "renders the edit program_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => program_type_path(@program_type), :method => "post" do
      assert_select "input#program_type_name", :name => "program_type[name]"
      assert_select "input#program_type_mode", :name => "program_type[mode]"
    end
  end
end
