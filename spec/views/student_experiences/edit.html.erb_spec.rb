require 'spec_helper'

describe "student_experiences/edit.html.erb" do
  before(:each) do
    @student_experience = assign(:student_experience, stub_model(StudentExperience,
      :student_id => 1
    ))
  end

  it "renders the edit student_experience form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_experience_path(@student_experience), :method => "post" do
      assert_select "input#student_experience_student_id", :name => "student_experience[student_id]"
    end
  end
end
