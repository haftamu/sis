require 'spec_helper'

describe "student_qualifications/edit.html.erb" do
  before(:each) do
    @student_qualification = assign(:student_qualification, stub_model(StudentQualification,
      :student_id => 1
    ))
  end

  it "renders the edit student_qualification form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_qualification_path(@student_qualification), :method => "post" do
      assert_select "input#student_qualification_student_id", :name => "student_qualification[student_id]"
    end
  end
end
