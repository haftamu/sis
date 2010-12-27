require "spec_helper"

describe StudentCorrespondencesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_correspondences" }.should route_to(:controller => "student_correspondences", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_correspondences/new" }.should route_to(:controller => "student_correspondences", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_correspondences/1" }.should route_to(:controller => "student_correspondences", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_correspondences/1/edit" }.should route_to(:controller => "student_correspondences", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_correspondences" }.should route_to(:controller => "student_correspondences", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_correspondences/1" }.should route_to(:controller => "student_correspondences", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_correspondences/1" }.should route_to(:controller => "student_correspondences", :action => "destroy", :id => "1")
    end

  end
end
