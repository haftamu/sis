require 'spec_helper'

describe "campus/new.html.erb" do
  before(:each) do
    assign(:campu, stub_model(Campu,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new campu form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => campus_path, :method => "post" do
      assert_select "input#campu_name", :name => "campu[name]"
    end
  end
end
