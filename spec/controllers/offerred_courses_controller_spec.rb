require 'spec_helper'

describe OfferredCoursesController do

  def mock_offerred_course(stubs={})
    (@mock_offerred_course ||= mock_model(OfferredCourse).as_null_object).tap do |offerred_course|
      offerred_course.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all offerred_courses as @offerred_courses" do
      OfferredCourse.stub(:all) { [mock_offerred_course] }
      get :index
      assigns(:offerred_courses).should eq([mock_offerred_course])
    end
  end

  describe "GET show" do
    it "assigns the requested offerred_course as @offerred_course" do
      OfferredCourse.stub(:find).with("37") { mock_offerred_course }
      get :show, :id => "37"
      assigns(:offerred_course).should be(mock_offerred_course)
    end
  end

  describe "GET new" do
    it "assigns a new offerred_course as @offerred_course" do
      OfferredCourse.stub(:new) { mock_offerred_course }
      get :new
      assigns(:offerred_course).should be(mock_offerred_course)
    end
  end

  describe "GET edit" do
    it "assigns the requested offerred_course as @offerred_course" do
      OfferredCourse.stub(:find).with("37") { mock_offerred_course }
      get :edit, :id => "37"
      assigns(:offerred_course).should be(mock_offerred_course)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created offerred_course as @offerred_course" do
        OfferredCourse.stub(:new).with({'these' => 'params'}) { mock_offerred_course(:save => true) }
        post :create, :offerred_course => {'these' => 'params'}
        assigns(:offerred_course).should be(mock_offerred_course)
      end

      it "redirects to the created offerred_course" do
        OfferredCourse.stub(:new) { mock_offerred_course(:save => true) }
        post :create, :offerred_course => {}
        response.should redirect_to(offerred_course_url(mock_offerred_course))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved offerred_course as @offerred_course" do
        OfferredCourse.stub(:new).with({'these' => 'params'}) { mock_offerred_course(:save => false) }
        post :create, :offerred_course => {'these' => 'params'}
        assigns(:offerred_course).should be(mock_offerred_course)
      end

      it "re-renders the 'new' template" do
        OfferredCourse.stub(:new) { mock_offerred_course(:save => false) }
        post :create, :offerred_course => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested offerred_course" do
        OfferredCourse.should_receive(:find).with("37") { mock_offerred_course }
        mock_offerred_course.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :offerred_course => {'these' => 'params'}
      end

      it "assigns the requested offerred_course as @offerred_course" do
        OfferredCourse.stub(:find) { mock_offerred_course(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:offerred_course).should be(mock_offerred_course)
      end

      it "redirects to the offerred_course" do
        OfferredCourse.stub(:find) { mock_offerred_course(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(offerred_course_url(mock_offerred_course))
      end
    end

    describe "with invalid params" do
      it "assigns the offerred_course as @offerred_course" do
        OfferredCourse.stub(:find) { mock_offerred_course(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:offerred_course).should be(mock_offerred_course)
      end

      it "re-renders the 'edit' template" do
        OfferredCourse.stub(:find) { mock_offerred_course(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested offerred_course" do
      OfferredCourse.should_receive(:find).with("37") { mock_offerred_course }
      mock_offerred_course.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the offerred_courses list" do
      OfferredCourse.stub(:find) { mock_offerred_course }
      delete :destroy, :id => "1"
      response.should redirect_to(offerred_courses_url)
    end
  end

end
