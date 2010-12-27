require 'spec_helper'

describe "student_correspondences/edit.html.erb" do
  before(:each) do
    @student_correspondence = assign(:student_correspondence, stub_model(StudentCorrespondence,
      :student_id => 1
    ))
  end

  it "renders the edit student_correspondence form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_correspondence_path(@student_correspondence), :method => "post" do
      assert_select "input#student_correspondence_student_id", :name => "student_correspondence[student_id]"
    end
  end
end
