require "spec_helper"

describe StudentRefereesController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/student_referees" }.should route_to(:controller => "student_referees", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/student_referees/new" }.should route_to(:controller => "student_referees", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/student_referees/1" }.should route_to(:controller => "student_referees", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/student_referees/1/edit" }.should route_to(:controller => "student_referees", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/student_referees" }.should route_to(:controller => "student_referees", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/student_referees/1" }.should route_to(:controller => "student_referees", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/student_referees/1" }.should route_to(:controller => "student_referees", :action => "destroy", :id => "1")
    end

  end
end
