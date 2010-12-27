require 'spec_helper'

describe "person_contacts/new.html.erb" do
  before(:each) do
    assign(:person_contact, stub_model(PersonContact,
      :person_id => 1
    ).as_new_record)
  end

  it "renders new person_contact form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => person_contacts_path, :method => "post" do
      assert_select "input#person_contact_person_id", :name => "person_contact[person_id]"
    end
  end
end
