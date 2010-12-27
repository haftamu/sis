require 'spec_helper'

describe "person_addresses/edit.html.erb" do
  before(:each) do
    @person_address = assign(:person_address, stub_model(PersonAddress,
      :person_id => 1
    ))
  end

  it "renders the edit person_address form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => person_address_path(@person_address), :method => "post" do
      assert_select "input#person_address_person_id", :name => "person_address[person_id]"
    end
  end
end
