require 'spec_helper'

describe StudentRefereesController do

  def mock_student_referee(stubs={})
    (@mock_student_referee ||= mock_model(StudentReferee).as_null_object).tap do |student_referee|
      student_referee.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all student_referees as @student_referees" do
      StudentReferee.stub(:all) { [mock_student_referee] }
      get :index
      assigns(:student_referees).should eq([mock_student_referee])
    end
  end

  describe "GET show" do
    it "assigns the requested student_referee as @student_referee" do
      StudentReferee.stub(:find).with("37") { mock_student_referee }
      get :show, :id => "37"
      assigns(:student_referee).should be(mock_student_referee)
    end
  end

  describe "GET new" do
    it "assigns a new student_referee as @student_referee" do
      StudentReferee.stub(:new) { mock_student_referee }
      get :new
      assigns(:student_referee).should be(mock_student_referee)
    end
  end

  describe "GET edit" do
    it "assigns the requested student_referee as @student_referee" do
      StudentReferee.stub(:find).with("37") { mock_student_referee }
      get :edit, :id => "37"
      assigns(:student_referee).should be(mock_student_referee)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created student_referee as @student_referee" do
        StudentReferee.stub(:new).with({'these' => 'params'}) { mock_student_referee(:save => true) }
        post :create, :student_referee => {'these' => 'params'}
        assigns(:student_referee).should be(mock_student_referee)
      end

      it "redirects to the created student_referee" do
        StudentReferee.stub(:new) { mock_student_referee(:save => true) }
        post :create, :student_referee => {}
        response.should redirect_to(student_referee_url(mock_student_referee))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student_referee as @student_referee" do
        StudentReferee.stub(:new).with({'these' => 'params'}) { mock_student_referee(:save => false) }
        post :create, :student_referee => {'these' => 'params'}
        assigns(:student_referee).should be(mock_student_referee)
      end

      it "re-renders the 'new' template" do
        StudentReferee.stub(:new) { mock_student_referee(:save => false) }
        post :create, :student_referee => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested student_referee" do
        StudentReferee.should_receive(:find).with("37") { mock_student_referee }
        mock_student_referee.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :student_referee => {'these' => 'params'}
      end

      it "assigns the requested student_referee as @student_referee" do
        StudentReferee.stub(:find) { mock_student_referee(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:student_referee).should be(mock_student_referee)
      end

      it "redirects to the student_referee" do
        StudentReferee.stub(:find) { mock_student_referee(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(student_referee_url(mock_student_referee))
      end
    end

    describe "with invalid params" do
      it "assigns the student_referee as @student_referee" do
        StudentReferee.stub(:find) { mock_student_referee(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:student_referee).should be(mock_student_referee)
      end

      it "re-renders the 'edit' template" do
        StudentReferee.stub(:find) { mock_student_referee(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested student_referee" do
      StudentReferee.should_receive(:find).with("37") { mock_student_referee }
      mock_student_referee.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the student_referees list" do
      StudentReferee.stub(:find) { mock_student_referee }
      delete :destroy, :id => "1"
      response.should redirect_to(student_referees_url)
    end
  end

end
