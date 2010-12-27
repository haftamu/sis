require "spec_helper"

describe PersonAddressesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/person_addresses" }.should route_to(:controller => "person_addresses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/person_addresses/new" }.should route_to(:controller => "person_addresses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/person_addresses/1" }.should route_to(:controller => "person_addresses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/person_addresses/1/edit" }.should route_to(:controller => "person_addresses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/person_addresses" }.should route_to(:controller => "person_addresses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/person_addresses/1" }.should route_to(:controller => "person_addresses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/person_addresses/1" }.should route_to(:controller => "person_addresses", :action => "destroy", :id => "1")
    end

  end
end
