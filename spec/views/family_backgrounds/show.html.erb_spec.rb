require 'spec_helper'

describe "family_backgrounds/show.html.erb" do
  before(:each) do
    @family_background = assign(:family_background, stub_model(FamilyBackground,
      :student_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
