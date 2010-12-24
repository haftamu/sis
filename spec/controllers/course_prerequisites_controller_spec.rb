require 'spec_helper'

describe CoursePrerequisitesController do

  def mock_course_prerequisite(stubs={})
    (@mock_course_prerequisite ||= mock_model(CoursePrerequisite).as_null_object).tap do |course_prerequisite|
      course_prerequisite.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all course_prerequisites as @course_prerequisites" do
      CoursePrerequisite.stub(:all) { [mock_course_prerequisite] }
      get :index
      assigns(:course_prerequisites).should eq([mock_course_prerequisite])
    end
  end

  describe "GET show" do
    it "assigns the requested course_prerequisite as @course_prerequisite" do
      CoursePrerequisite.stub(:find).with("37") { mock_course_prerequisite }
      get :show, :id => "37"
      assigns(:course_prerequisite).should be(mock_course_prerequisite)
    end
  end

  describe "GET new" do
    it "assigns a new course_prerequisite as @course_prerequisite" do
      CoursePrerequisite.stub(:new) { mock_course_prerequisite }
      get :new
      assigns(:course_prerequisite).should be(mock_course_prerequisite)
    end
  end

  describe "GET edit" do
    it "assigns the requested course_prerequisite as @course_prerequisite" do
      CoursePrerequisite.stub(:find).with("37") { mock_course_prerequisite }
      get :edit, :id => "37"
      assigns(:course_prerequisite).should be(mock_course_prerequisite)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created course_prerequisite as @course_prerequisite" do
        CoursePrerequisite.stub(:new).with({'these' => 'params'}) { mock_course_prerequisite(:save => true) }
        post :create, :course_prerequisite => {'these' => 'params'}
        assigns(:course_prerequisite).should be(mock_course_prerequisite)
      end

      it "redirects to the created course_prerequisite" do
        CoursePrerequisite.stub(:new) { mock_course_prerequisite(:save => true) }
        post :create, :course_prerequisite => {}
        response.should redirect_to(course_prerequisite_url(mock_course_prerequisite))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved course_prerequisite as @course_prerequisite" do
        CoursePrerequisite.stub(:new).with({'these' => 'params'}) { mock_course_prerequisite(:save => false) }
        post :create, :course_prerequisite => {'these' => 'params'}
        assigns(:course_prerequisite).should be(mock_course_prerequisite)
      end

      it "re-renders the 'new' template" do
        CoursePrerequisite.stub(:new) { mock_course_prerequisite(:save => false) }
        post :create, :course_prerequisite => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested course_prerequisite" do
        CoursePrerequisite.should_receive(:find).with("37") { mock_course_prerequisite }
        mock_course_prerequisite.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :course_prerequisite => {'these' => 'params'}
      end

      it "assigns the requested course_prerequisite as @course_prerequisite" do
        CoursePrerequisite.stub(:find) { mock_course_prerequisite(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:course_prerequisite).should be(mock_course_prerequisite)
      end

      it "redirects to the course_prerequisite" do
        CoursePrerequisite.stub(:find) { mock_course_prerequisite(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(course_prerequisite_url(mock_course_prerequisite))
      end
    end

    describe "with invalid params" do
      it "assigns the course_prerequisite as @course_prerequisite" do
        CoursePrerequisite.stub(:find) { mock_course_prerequisite(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:course_prerequisite).should be(mock_course_prerequisite)
      end

      it "re-renders the 'edit' template" do
        CoursePrerequisite.stub(:find) { mock_course_prerequisite(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested course_prerequisite" do
      CoursePrerequisite.should_receive(:find).with("37") { mock_course_prerequisite }
      mock_course_prerequisite.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the course_prerequisites list" do
      CoursePrerequisite.stub(:find) { mock_course_prerequisite }
      delete :destroy, :id => "1"
      response.should redirect_to(course_prerequisites_url)
    end
  end

end
