require "spec_helper"

describe PersonContactsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/person_contacts" }.should route_to(:controller => "person_contacts", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/person_contacts/new" }.should route_to(:controller => "person_contacts", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/person_contacts/1" }.should route_to(:controller => "person_contacts", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/person_contacts/1/edit" }.should route_to(:controller => "person_contacts", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/person_contacts" }.should route_to(:controller => "person_contacts", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/person_contacts/1" }.should route_to(:controller => "person_contacts", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/person_contacts/1" }.should route_to(:controller => "person_contacts", :action => "destroy", :id => "1")
    end

  end
end
