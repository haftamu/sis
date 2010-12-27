require 'spec_helper'

describe "person_contacts/edit.html.erb" do
  before(:each) do
    @person_contact = assign(:person_contact, stub_model(PersonContact,
      :person_id => 1
    ))
  end

  it "renders the edit person_contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => person_contact_path(@person_contact), :method => "post" do
      assert_select "input#person_contact_person_id", :name => "person_contact[person_id]"
    end
  end
end
