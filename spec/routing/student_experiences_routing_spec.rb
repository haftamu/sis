require "spec_helper"

describe StudentExperiencesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_experiences" }.should route_to(:controller => "student_experiences", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_experiences/new" }.should route_to(:controller => "student_experiences", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_experiences/1" }.should route_to(:controller => "student_experiences", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_experiences/1/edit" }.should route_to(:controller => "student_experiences", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_experiences" }.should route_to(:controller => "student_experiences", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_experiences/1" }.should route_to(:controller => "student_experiences", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_experiences/1" }.should route_to(:controller => "student_experiences", :action => "destroy", :id => "1")
    end

  end
end
