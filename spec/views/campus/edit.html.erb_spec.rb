require 'spec_helper'

describe "campus/edit.html.erb" do
  before(:each) do
    @campu = assign(:campu, stub_model(Campu,
      :name => "MyString"
    ))
  end

  it "renders the edit campu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campu_path(@campu), :method => "post" do
      assert_select "input#campu_name", :name => "campu[name]"
    end
  end
end
