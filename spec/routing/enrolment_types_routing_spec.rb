require "spec_helper"

describe EnrolmentTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/enrolment_types" }.should route_to(:controller => "enrolment_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/enrolment_types/new" }.should route_to(:controller => "enrolment_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/enrolment_types/1" }.should route_to(:controller => "enrolment_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/enrolment_types/1/edit" }.should route_to(:controller => "enrolment_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/enrolment_types" }.should route_to(:controller => "enrolment_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/enrolment_types/1" }.should route_to(:controller => "enrolment_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/enrolment_types/1" }.should route_to(:controller => "enrolment_types", :action => "destroy", :id => "1")
    end

  end
end
