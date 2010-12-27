require 'spec_helper'

describe "student_referees/edit.html.erb" do
  before(:each) do
    @student_referee = assign(:student_referee, stub_model(StudentReferee,
      :student_id => 1
    ))
  end

  it "renders the edit student_referee form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => student_referee_path(@student_referee), :method => "post" do
      assert_select "input#student_referee_student_id", :name => "student_referee[student_id]"
    end
  end
end
