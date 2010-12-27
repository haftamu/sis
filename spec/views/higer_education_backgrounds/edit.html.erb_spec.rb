require 'spec_helper'

describe "higer_education_backgrounds/edit.html.erb" do
  before(:each) do
    @higer_education_background = assign(:higer_education_background, stub_model(HigerEducationBackground,
      :student_id => 1
    ))
  end

  it "renders the edit higer_education_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => higer_education_background_path(@higer_education_background), :method => "post" do
      assert_select "input#higer_education_background_student_id", :name => "higer_education_background[student_id]"
    end
  end
end
