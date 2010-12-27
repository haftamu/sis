require 'spec_helper'

describe "student_qualifications/new.html.erb" do
  before(:each) do
    assign(:student_qualification, stub_model(StudentQualification,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new student_qualification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_qualifications_path, :method => "post" do
      assert_select "input#student_qualification_student_id", :name => "student_qualification[student_id]"
    end
  end
end
