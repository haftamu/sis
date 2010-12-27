require 'spec_helper'

describe "employment_backgrounds/new.html.erb" do
  before(:each) do
    assign(:employment_background, stub_model(EmploymentBackground,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new employment_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => employment_backgrounds_path, :method => "post" do
      assert_select "input#employment_background_student_id", :name => "employment_background[student_id]"
    end
  end
end
