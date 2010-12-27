require "spec_helper"

describe EmploymentBackgroundsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/employment_backgrounds" }.should route_to(:controller => "employment_backgrounds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employment_backgrounds/new" }.should route_to(:controller => "employment_backgrounds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employment_backgrounds/1" }.should route_to(:controller => "employment_backgrounds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employment_backgrounds/1/edit" }.should route_to(:controller => "employment_backgrounds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employment_backgrounds" }.should route_to(:controller => "employment_backgrounds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/employment_backgrounds/1" }.should route_to(:controller => "employment_backgrounds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employment_backgrounds/1" }.should route_to(:controller => "employment_backgrounds", :action => "destroy", :id => "1")
    end

  end
end
