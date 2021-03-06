require 'spec_helper'

describe SemestersController do

  def mock_semester(stubs={})
    (@mock_semester ||= mock_model(Semester).as_null_object).tap do |semester|
      semester.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all semesters as @semesters" do
      Semester.stub(:all) { [mock_semester] }
      get :index
      assigns(:semesters).should eq([mock_semester])
    end
  end

  describe "GET show" do
    it "assigns the requested semester as @semester" do
      Semester.stub(:find).with("37") { mock_semester }
      get :show, :id => "37"
      assigns(:semester).should be(mock_semester)
    end
  end

  describe "GET new" do
    it "assigns a new semester as @semester" do
      Semester.stub(:new) { mock_semester }
      get :new
      assigns(:semester).should be(mock_semester)
    end
  end

  describe "GET edit" do
    it "assigns the requested semester as @semester" do
      Semester.stub(:find).with("37") { mock_semester }
      get :edit, :id => "37"
      assigns(:semester).should be(mock_semester)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created semester as @semester" do
        Semester.stub(:new).with({'these' => 'params'}) { mock_semester(:save => true) }
        post :create, :semester => {'these' => 'params'}
        assigns(:semester).should be(mock_semester)
      end

      it "redirects to the created semester" do
        Semester.stub(:new) { mock_semester(:save => true) }
        post :create, :semester => {}
        response.should redirect_to(semester_url(mock_semester))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved semester as @semester" do
        Semester.stub(:new).with({'these' => 'params'}) { mock_semester(:save => false) }
        post :create, :semester => {'these' => 'params'}
        assigns(:semester).should be(mock_semester)
      end

      it "re-renders the 'new' template" do
        Semester.stub(:new) { mock_semester(:save => false) }
        post :create, :semester => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested semester" do
        Semester.should_receive(:find).with("37") { mock_semester }
        mock_semester.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :semester => {'these' => 'params'}
      end

      it "assigns the requested semester as @semester" do
        Semester.stub(:find) { mock_semester(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:semester).should be(mock_semester)
      end

      it "redirects to the semester" do
        Semester.stub(:find) { mock_semester(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(semester_url(mock_semester))
      end
    end

    describe "with invalid params" do
      it "assigns the semester as @semester" do
        Semester.stub(:find) { mock_semester(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:semester).should be(mock_semester)
      end

      it "re-renders the 'edit' template" do
        Semester.stub(:find) { mock_semester(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested semester" do
      Semester.should_receive(:find).with("37") { mock_semester }
      mock_semester.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the semesters list" do
      Semester.stub(:find) { mock_semester }
      delete :destroy, :id => "1"
      response.should redirect_to(semesters_url)
    end
  end

end
