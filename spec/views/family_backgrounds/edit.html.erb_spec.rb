require 'spec_helper'

describe "family_backgrounds/edit.html.erb" do
  before(:each) do
    @family_background = assign(:family_background, stub_model(FamilyBackground,
      :student_id => 1
    ))
  end

  it "renders the edit family_background form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => family_background_path(@family_background), :method => "post" do
      assert_select "input#family_background_student_id", :name => "family_background[student_id]"
    end
  end
end
