require "spec_helper"

describe ProgramTypesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/program_types" }.should route_to(:controller => "program_types", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/program_types/new" }.should route_to(:controller => "program_types", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/program_types/1" }.should route_to(:controller => "program_types", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/program_types/1/edit" }.should route_to(:controller => "program_types", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/program_types" }.should route_to(:controller => "program_types", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/program_types/1" }.should route_to(:controller => "program_types", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/program_types/1" }.should route_to(:controller => "program_types", :action => "destroy", :id => "1")
    end

  end
end
