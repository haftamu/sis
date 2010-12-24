require 'spec_helper'

describe "campus/index.html.erb" do
  before(:each) do
    assign(:campus, [
      stub_model(Campu,
        :name => "Name"
      ),
      stub_model(Campu,
        :name => "Name"
      )
    ])
  end

  it "renders a list of campus" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
