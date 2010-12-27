require 'spec_helper'

describe StudentExperiencesController do

  def mock_student_experience(stubs={})
    (@mock_student_experience ||= mock_model(StudentExperience).as_null_object).tap do |student_experience|
      student_experience.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all student_experiences as @student_experiences" do
      StudentExperience.stub(:all) { [mock_student_experience] }
      get :index
      assigns(:student_experiences).should eq([mock_student_experience])
    end
  end

  describe "GET show" do
    it "assigns the requested student_experience as @student_experience" do
      StudentExperience.stub(:find).with("37") { mock_student_experience }
      get :show, :id => "37"
      assigns(:student_experience).should be(mock_student_experience)
    end
  end

  describe "GET new" do
    it "assigns a new student_experience as @student_experience" do
      StudentExperience.stub(:new) { mock_student_experience }
      get :new
      assigns(:student_experience).should be(mock_student_experience)
    end
  end

  describe "GET edit" do
    it "assigns the requested student_experience as @student_experience" do
      StudentExperience.stub(:find).with("37") { mock_student_experience }
      get :edit, :id => "37"
      assigns(:student_experience).should be(mock_student_experience)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created student_experience as @student_experience" do
        StudentExperience.stub(:new).with({'these' => 'params'}) { mock_student_experience(:save => true) }
        post :create, :student_experience => {'these' => 'params'}
        assigns(:student_experience).should be(mock_student_experience)
      end

      it "redirects to the created student_experience" do
        StudentExperience.stub(:new) { mock_student_experience(:save => true) }
        post :create, :student_experience => {}
        response.should redirect_to(student_experience_url(mock_student_experience))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student_experience as @student_experience" do
        StudentExperience.stub(:new).with({'these' => 'params'}) { mock_student_experience(:save => false) }
        post :create, :student_experience => {'these' => 'params'}
        assigns(:student_experience).should be(mock_student_experience)
      end

      it "re-renders the 'new' template" do
        StudentExperience.stub(:new) { mock_student_experience(:save => false) }
        post :create, :student_experience => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested student_experience" do
        StudentExperience.should_receive(:find).with("37") { mock_student_experience }
        mock_student_experience.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :student_experience => {'these' => 'params'}
      end

      it "assigns the requested student_experience as @student_experience" do
        StudentExperience.stub(:find) { mock_student_experience(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:student_experience).should be(mock_student_experience)
      end

      it "redirects to the student_experience" do
        StudentExperience.stub(:find) { mock_student_experience(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(student_experience_url(mock_student_experience))
      end
    end

    describe "with invalid params" do
      it "assigns the student_experience as @student_experience" do
        StudentExperience.stub(:find) { mock_student_experience(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:student_experience).should be(mock_student_experience)
      end

      it "re-renders the 'edit' template" do
        StudentExperience.stub(:find) { mock_student_experience(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested student_experience" do
      StudentExperience.should_receive(:find).with("37") { mock_student_experience }
      mock_student_experience.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the student_experiences list" do
      StudentExperience.stub(:find) { mock_student_experience }
      delete :destroy, :id => "1"
      response.should redirect_to(student_experiences_url)
    end
  end

end
