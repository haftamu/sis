require 'spec_helper'

describe "admission_types/new.html.erb" do
  before(:each) do
    assign(:admission_type, stub_model(AdmissionType,
      :enrolment_type_id => 1,
      :program_type_id => 1
    ).as_new_record)
  end

  it "renders new admission_type form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admission_types_path, :method => "post" do
      assert_select "input#admission_type_enrolment_type_id", :name => "admission_type[enrolment_type_id]"
      assert_select "input#admission_type_program_type_id", :name => "admission_type[program_type_id]"
    end
  end
end
