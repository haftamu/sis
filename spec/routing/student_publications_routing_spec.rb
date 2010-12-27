require "spec_helper"

describe StudentPublicationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_publications" }.should route_to(:controller => "student_publications", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_publications/new" }.should route_to(:controller => "student_publications", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_publications/1" }.should route_to(:controller => "student_publications", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_publications/1/edit" }.should route_to(:controller => "student_publications", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_publications" }.should route_to(:controller => "student_publications", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_publications/1" }.should route_to(:controller => "student_publications", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_publications/1" }.should route_to(:controller => "student_publications", :action => "destroy", :id => "1")
    end

  end
end
