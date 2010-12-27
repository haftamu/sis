require 'spec_helper'

describe "student_publications/new.html.erb" do
  before(:each) do
    assign(:student_publication, stub_model(StudentPublication,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new student_publication form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_publications_path, :method => "post" do
      assert_select "input#student_publication_student_id", :name => "student_publication[student_id]"
    end
  end
end
