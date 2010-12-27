require "spec_helper"

describe StudentQualificationsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_qualifications" }.should route_to(:controller => "student_qualifications", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_qualifications/new" }.should route_to(:controller => "student_qualifications", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_qualifications/1" }.should route_to(:controller => "student_qualifications", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_qualifications/1/edit" }.should route_to(:controller => "student_qualifications", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_qualifications" }.should route_to(:controller => "student_qualifications", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_qualifications/1" }.should route_to(:controller => "student_qualifications", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_qualifications/1" }.should route_to(:controller => "student_qualifications", :action => "destroy", :id => "1")
    end

  end
end
