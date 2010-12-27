require 'spec_helper'

describe "student_referees/new.html.erb" do
  before(:each) do
    assign(:student_referee, stub_model(StudentReferee,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new student_referee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_referees_path, :method => "post" do
      assert_select "input#student_referee_student_id", :name => "student_referee[student_id]"
    end
  end
end
