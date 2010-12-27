require 'spec_helper'

describe "employment_backgrounds/edit.html.erb" do
  before(:each) do
    @employment_background = assign(:employment_background, stub_model(EmploymentBackground,
      :student_id => 1
    ))
  end

  it "renders the edit employment_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employment_background_path(@employment_background), :method => "post" do
      assert_select "input#employment_background_student_id", :name => "employment_background[student_id]"
    end
  end
end
