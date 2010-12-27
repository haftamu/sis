require 'spec_helper'

describe "educational_backgrounds/new.html.erb" do
  before(:each) do
    assign(:educational_background, stub_model(EducationalBackground,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new educational_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => educational_backgrounds_path, :method => "post" do
      assert_select "input#educational_background_student_id", :name => "educational_background[student_id]"
    end
  end
end
