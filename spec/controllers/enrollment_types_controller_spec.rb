require 'spec_helper'

describe EnrollmentTypesController do

  def mock_enrollment_type(stubs={})
    (@mock_enrollment_type ||= mock_model(EnrollmentType).as_null_object).tap do |enrollment_type|
      enrollment_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all enrollment_types as @enrollment_types" do
      EnrollmentType.stub(:all) { [mock_enrollment_type] }
      get :index
      assigns(:enrollment_types).should eq([mock_enrollment_type])
    end
  end

  describe "GET show" do
    it "assigns the requested enrollment_type as @enrollment_type" do
      EnrollmentType.stub(:find).with("37") { mock_enrollment_type }
      get :show, :id => "37"
      assigns(:enrollment_type).should be(mock_enrollment_type)
    end
  end

  describe "GET new" do
    it "assigns a new enrollment_type as @enrollment_type" do
      EnrollmentType.stub(:new) { mock_enrollment_type }
      get :new
      assigns(:enrollment_type).should be(mock_enrollment_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested enrollment_type as @enrollment_type" do
      EnrollmentType.stub(:find).with("37") { mock_enrollment_type }
      get :edit, :id => "37"
      assigns(:enrollment_type).should be(mock_enrollment_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created enrollment_type as @enrollment_type" do
        EnrollmentType.stub(:new).with({'these' => 'params'}) { mock_enrollment_type(:save => true) }
        post :create, :enrollment_type => {'these' => 'params'}
        assigns(:enrollment_type).should be(mock_enrollment_type)
      end

      it "redirects to the created enrollment_type" do
        EnrollmentType.stub(:new) { mock_enrollment_type(:save => true) }
        post :create, :enrollment_type => {}
        response.should redirect_to(enrollment_type_url(mock_enrollment_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved enrollment_type as @enrollment_type" do
        EnrollmentType.stub(:new).with({'these' => 'params'}) { mock_enrollment_type(:save => false) }
        post :create, :enrollment_type => {'these' => 'params'}
        assigns(:enrollment_type).should be(mock_enrollment_type)
      end

      it "re-renders the 'new' template" do
        EnrollmentType.stub(:new) { mock_enrollment_type(:save => false) }
        post :create, :enrollment_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested enrollment_type" do
        EnrollmentType.should_receive(:find).with("37") { mock_enrollment_type }
        mock_enrollment_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :enrollment_type => {'these' => 'params'}
      end

      it "assigns the requested enrollment_type as @enrollment_type" do
        EnrollmentType.stub(:find) { mock_enrollment_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:enrollment_type).should be(mock_enrollment_type)
      end

      it "redirects to the enrollment_type" do
        EnrollmentType.stub(:find) { mock_enrollment_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(enrollment_type_url(mock_enrollment_type))
      end
    end

    describe "with invalid params" do
      it "assigns the enrollment_type as @enrollment_type" do
        EnrollmentType.stub(:find) { mock_enrollment_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:enrollment_type).should be(mock_enrollment_type)
      end

      it "re-renders the 'edit' template" do
        EnrollmentType.stub(:find) { mock_enrollment_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested enrollment_type" do
      EnrollmentType.should_receive(:find).with("37") { mock_enrollment_type }
      mock_enrollment_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the enrollment_types list" do
      EnrollmentType.stub(:find) { mock_enrollment_type }
      delete :destroy, :id => "1"
      response.should redirect_to(enrollment_types_url)
    end
  end

end
