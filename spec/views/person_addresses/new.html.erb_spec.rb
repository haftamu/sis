require 'spec_helper'

describe "person_addresses/new.html.erb" do
  before(:each) do
    assign(:person_address, stub_model(PersonAddress,
      :person_id => 1
    ).as_new_record)
  end

  it "renders new person_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => person_addresses_path, :method => "post" do
      assert_select "input#person_address_person_id", :name => "person_address[person_id]"
    end
  end
end
