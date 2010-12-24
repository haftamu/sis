require 'spec_helper'

describe "admission_types/edit.html.erb" do
  before(:each) do
    @admission_type = assign(:admission_type, stub_model(AdmissionType,
      :enrolment_type_id => 1,
      :program_type_id => 1
    ))
  end

  it "renders the edit admission_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admission_type_path(@admission_type), :method => "post" do
      assert_select "input#admission_type_enrolment_type_id", :name => "admission_type[enrolment_type_id]"
      assert_select "input#admission_type_program_type_id", :name => "admission_type[program_type_id]"
    end
  end
end
