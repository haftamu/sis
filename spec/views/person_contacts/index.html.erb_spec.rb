require 'spec_helper'

describe "person_contacts/index.html.erb" do
  before(:each) do
    assign(:person_contacts, [
      stub_model(PersonContact,
        :person_id => 1
      ),
      stub_model(PersonContact,
        :person_id => 1
      )
    ])
  end

  it "renders a list of person_contacts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
