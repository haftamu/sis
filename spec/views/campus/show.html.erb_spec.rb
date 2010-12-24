require 'spec_helper'

describe "campus/show.html.erb" do
  before(:each) do
    @campu = assign(:campu, stub_model(Campu,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
