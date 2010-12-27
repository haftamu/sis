require 'spec_helper'

describe "higer_education_backgrounds/new.html.erb" do
  before(:each) do
    assign(:higer_education_background, stub_model(HigerEducationBackground,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new higer_education_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => higer_education_backgrounds_path, :method => "post" do
      assert_select "input#higer_education_background_student_id", :name => "higer_education_background[student_id]"
    end
  end
end
