require 'spec_helper'

describe "student_publications/edit.html.erb" do
  before(:each) do
    @student_publication = assign(:student_publication, stub_model(StudentPublication,
      :student_id => 1
    ))
  end

  it "renders the edit student_publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_publication_path(@student_publication), :method => "post" do
      assert_select "input#student_publication_student_id", :name => "student_publication[student_id]"
    end
  end
end
