require 'spec_helper'

describe "person_contacts/show.html.erb" do
  before(:each) do
    @person_contact = assign(:person_contact, stub_model(PersonContact,
      :person_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
