require 'spec_helper'

describe "family_backgrounds/new.html.erb" do
  before(:each) do
    assign(:family_background, stub_model(FamilyBackground,
      :student_id => 1
    ).as_new_record)
  end

  it "renders new family_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => family_backgrounds_path, :method => "post" do
      assert_select "input#family_background_student_id", :name => "family_background[student_id]"
    end
  end
end
