require 'spec_helper'

describe "educational_backgrounds/edit.html.erb" do
  before(:each) do
    @educational_background = assign(:educational_background, stub_model(EducationalBackground,
      :student_id => 1
    ))
  end

  it "renders the edit educational_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => educational_background_path(@educational_background), :method => "post" do
      assert_select "input#educational_background_student_id", :name => "educational_background[student_id]"
    end
  end
end
