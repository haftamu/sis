require "spec_helper"

describe CoursePrerequisitesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/course_prerequisites" }.should route_to(:controller => "course_prerequisites", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/course_prerequisites/new" }.should route_to(:controller => "course_prerequisites", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/course_prerequisites/1" }.should route_to(:controller => "course_prerequisites", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/course_prerequisites/1/edit" }.should route_to(:controller => "course_prerequisites", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/course_prerequisites" }.should route_to(:controller => "course_prerequisites", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/course_prerequisites/1" }.should route_to(:controller => "course_prerequisites", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/course_prerequisites/1" }.should route_to(:controller => "course_prerequisites", :action => "destroy", :id => "1")
    end

  end
end
