require 'spec_helper'

describe "admission_types/index.html.erb" do
  before(:each) do
    assign(:admission_types, [
      stub_model(AdmissionType,
        :enrolment_type_id => 1,
        :program_type_id => 1
      ),
      stub_model(AdmissionType,
        :enrolment_type_id => 1,
        :program_type_id => 1
      )
    ])
  end

  it "renders a list of admission_types" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
