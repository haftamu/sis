require 'spec_helper'

describe "person_addresses/show.html.erb" do
  before(:each) do
    @person_address = assign(:person_address, stub_model(PersonAddress,
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
