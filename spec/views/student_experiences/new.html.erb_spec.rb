require 'spec_helper'

describe "student_experiences/new.html.erb" do
  before(:each) do
    assign(:student_experience, stub_model(StudentExperience,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new student_experience form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_experiences_path, :method => "post" do
      assert_select "input#student_experience_student_id", :name => "student_experience[student_id]"
    end
  end
end
