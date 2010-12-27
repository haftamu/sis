require 'spec_helper'

describe StudentQualificationsController do

  def mock_student_qualification(stubs={})
    (@mock_student_qualification ||= mock_model(StudentQualification).as_null_object).tap do |student_qualification|
      student_qualification.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all student_qualifications as @student_qualifications" do
      StudentQualification.stub(:all) { [mock_student_qualification] }
      get :index
      assigns(:student_qualifications).should eq([mock_student_qualification])
    end
  end

  describe "GET show" do
    it "assigns the requested student_qualification as @student_qualification" do
      StudentQualification.stub(:find).with("37") { mock_student_qualification }
      get :show, :id => "37"
      assigns(:student_qualification).should be(mock_student_qualification)
    end
  end

  describe "GET new" do
    it "assigns a new student_qualification as @student_qualification" do
      StudentQualification.stub(:new) { mock_student_qualification }
      get :new
      assigns(:student_qualification).should be(mock_student_qualification)
    end
  end

  describe "GET edit" do
    it "assigns the requested student_qualification as @student_qualification" do
      StudentQualification.stub(:find).with("37") { mock_student_qualification }
      get :edit, :id => "37"
      assigns(:student_qualification).should be(mock_student_qualification)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created student_qualification as @student_qualification" do
        StudentQualification.stub(:new).with({'these' => 'params'}) { mock_student_qualification(:save => true) }
        post :create, :student_qualification => {'these' => 'params'}
        assigns(:student_qualification).should be(mock_student_qualification)
      end

      it "redirects to the created student_qualification" do
        StudentQualification.stub(:new) { mock_student_qualification(:save => true) }
        post :create, :student_qualification => {}
        response.should redirect_to(student_qualification_url(mock_student_qualification))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student_qualification as @student_qualification" do
        StudentQualification.stub(:new).with({'these' => 'params'}) { mock_student_qualification(:save => false) }
        post :create, :student_qualification => {'these' => 'params'}
        assigns(:student_qualification).should be(mock_student_qualification)
      end

      it "re-renders the 'new' template" do
        StudentQualification.stub(:new) { mock_student_qualification(:save => false) }
        post :create, :student_qualification => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested student_qualification" do
        StudentQualification.should_receive(:find).with("37") { mock_student_qualification }
        mock_student_qualification.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :student_qualification => {'these' => 'params'}
      end

      it "assigns the requested student_qualification as @student_qualification" do
        StudentQualification.stub(:find) { mock_student_qualification(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:student_qualification).should be(mock_student_qualification)
      end

      it "redirects to the student_qualification" do
        StudentQualification.stub(:find) { mock_student_qualification(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(student_qualification_url(mock_student_qualification))
      end
    end

    describe "with invalid params" do
      it "assigns the student_qualification as @student_qualification" do
        StudentQualification.stub(:find) { mock_student_qualification(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:student_qualification).should be(mock_student_qualification)
      end

      it "re-renders the 'edit' template" do
        StudentQualification.stub(:find) { mock_student_qualification(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested student_qualification" do
      StudentQualification.should_receive(:find).with("37") { mock_student_qualification }
      mock_student_qualification.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the student_qualifications list" do
      StudentQualification.stub(:find) { mock_student_qualification }
      delete :destroy, :id => "1"
      response.should redirect_to(student_qualifications_url)
    end
  end

end
