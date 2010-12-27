require 'spec_helper'

describe StudentCorrespondencesController do

  def mock_student_correspondence(stubs={})
    (@mock_student_correspondence ||= mock_model(StudentCorrespondence).as_null_object).tap do |student_correspondence|
      student_correspondence.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all student_correspondences as @student_correspondences" do
      StudentCorrespondence.stub(:all) { [mock_student_correspondence] }
      get :index
      assigns(:student_correspondences).should eq([mock_student_correspondence])
    end
  end

  describe "GET show" do
    it "assigns the requested student_correspondence as @student_correspondence" do
      StudentCorrespondence.stub(:find).with("37") { mock_student_correspondence }
      get :show, :id => "37"
      assigns(:student_correspondence).should be(mock_student_correspondence)
    end
  end

  describe "GET new" do
    it "assigns a new student_correspondence as @student_correspondence" do
      StudentCorrespondence.stub(:new) { mock_student_correspondence }
      get :new
      assigns(:student_correspondence).should be(mock_student_correspondence)
    end
  end

  describe "GET edit" do
    it "assigns the requested student_correspondence as @student_correspondence" do
      StudentCorrespondence.stub(:find).with("37") { mock_student_correspondence }
      get :edit, :id => "37"
      assigns(:student_correspondence).should be(mock_student_correspondence)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created student_correspondence as @student_correspondence" do
        StudentCorrespondence.stub(:new).with({'these' => 'params'}) { mock_student_correspondence(:save => true) }
        post :create, :student_correspondence => {'these' => 'params'}
        assigns(:student_correspondence).should be(mock_student_correspondence)
      end

      it "redirects to the created student_correspondence" do
        StudentCorrespondence.stub(:new) { mock_student_correspondence(:save => true) }
        post :create, :student_correspondence => {}
        response.should redirect_to(student_correspondence_url(mock_student_correspondence))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student_correspondence as @student_correspondence" do
        StudentCorrespondence.stub(:new).with({'these' => 'params'}) { mock_student_correspondence(:save => false) }
        post :create, :student_correspondence => {'these' => 'params'}
        assigns(:student_correspondence).should be(mock_student_correspondence)
      end

      it "re-renders the 'new' template" do
        StudentCorrespondence.stub(:new) { mock_student_correspondence(:save => false) }
        post :create, :student_correspondence => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested student_correspondence" do
        StudentCorrespondence.should_receive(:find).with("37") { mock_student_correspondence }
        mock_student_correspondence.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :student_correspondence => {'these' => 'params'}
      end

      it "assigns the requested student_correspondence as @student_correspondence" do
        StudentCorrespondence.stub(:find) { mock_student_correspondence(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:student_correspondence).should be(mock_student_correspondence)
      end

      it "redirects to the student_correspondence" do
        StudentCorrespondence.stub(:find) { mock_student_correspondence(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(student_correspondence_url(mock_student_correspondence))
      end
    end

    describe "with invalid params" do
      it "assigns the student_correspondence as @student_correspondence" do
        StudentCorrespondence.stub(:find) { mock_student_correspondence(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:student_correspondence).should be(mock_student_correspondence)
      end

      it "re-renders the 'edit' template" do
        StudentCorrespondence.stub(:find) { mock_student_correspondence(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested student_correspondence" do
      StudentCorrespondence.should_receive(:find).with("37") { mock_student_correspondence }
      mock_student_correspondence.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the student_correspondences list" do
      StudentCorrespondence.stub(:find) { mock_student_correspondence }
      delete :destroy, :id => "1"
      response.should redirect_to(student_correspondences_url)
    end
  end

end
