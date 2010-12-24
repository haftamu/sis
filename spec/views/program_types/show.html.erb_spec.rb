require 'spec_helper'

describe "program_types/show.html.erb" do
  before(:each) do
    @program_type = assign(:program_type, stub_model(ProgramType,
      :name => "Name",
      :mode => "Mode"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Mode/)
  end
end
