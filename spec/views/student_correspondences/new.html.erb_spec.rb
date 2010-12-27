require 'spec_helper'

describe "student_correspondences/new.html.erb" do
  before(:each) do
    assign(:student_correspondence, stub_model(StudentCorrespondence,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new student_correspondence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_correspondences_path, :method => "post" do
      assert_select "input#student_correspondence_student_id", :name => "student_correspondence[student_id]"
    end
  end
end
