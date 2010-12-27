require "spec_helper"

describe HigerEducationBackgroundsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/higer_education_backgrounds" }.should route_to(:controller => "higer_education_backgrounds", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/higer_education_backgrounds/new" }.should route_to(:controller => "higer_education_backgrounds", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/higer_education_backgrounds/1" }.should route_to(:controller => "higer_education_backgrounds", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/higer_education_backgrounds/1/edit" }.should route_to(:controller => "higer_education_backgrounds", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/higer_education_backgrounds" }.should route_to(:controller => "higer_education_backgrounds", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/higer_education_backgrounds/1" }.should route_to(:controller => "higer_education_backgrounds", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/higer_education_backgrounds/1" }.should route_to(:controller => "higer_education_backgrounds", :action => "destroy", :id => "1")
    end

  end
end
