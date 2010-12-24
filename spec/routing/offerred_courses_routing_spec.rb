require "spec_helper"

describe OfferredCoursesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/offerred_courses" }.should route_to(:controller => "offerred_courses", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/offerred_courses/new" }.should route_to(:controller => "offerred_courses", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/offerred_courses/1" }.should route_to(:controller => "offerred_courses", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/offerred_courses/1/edit" }.should route_to(:controller => "offerred_courses", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/offerred_courses" }.should route_to(:controller => "offerred_courses", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/offerred_courses/1" }.should route_to(:controller => "offerred_courses", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/offerred_courses/1" }.should route_to(:controller => "offerred_courses", :action => "destroy", :id => "1")
    end

  end
end
