require 'spec_helper'

describe AdmissionTypesController do

  def mock_admission_type(stubs={})
    (@mock_admission_type ||= mock_model(AdmissionType).as_null_object).tap do |admission_type|
      admission_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all admission_types as @admission_types" do
      AdmissionType.stub(:all) { [mock_admission_type] }
      get :index
      assigns(:admission_types).should eq([mock_admission_type])
    end
  end

  describe "GET show" do
    it "assigns the requested admission_type as @admission_type" do
      AdmissionType.stub(:find).with("37") { mock_admission_type }
      get :show, :id => "37"
      assigns(:admission_type).should be(mock_admission_type)
    end
  end

  describe "GET new" do
    it "assigns a new admission_type as @admission_type" do
      AdmissionType.stub(:new) { mock_admission_type }
      get :new
      assigns(:admission_type).should be(mock_admission_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested admission_type as @admission_type" do
      AdmissionType.stub(:find).with("37") { mock_admission_type }
      get :edit, :id => "37"
      assigns(:admission_type).should be(mock_admission_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created admission_type as @admission_type" do
        AdmissionType.stub(:new).with({'these' => 'params'}) { mock_admission_type(:save => true) }
        post :create, :admission_type => {'these' => 'params'}
        assigns(:admission_type).should be(mock_admission_type)
      end

      it "redirects to the created admission_type" do
        AdmissionType.stub(:new) { mock_admission_type(:save => true) }
        post :create, :admission_type => {}
        response.should redirect_to(admission_type_url(mock_admission_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admission_type as @admission_type" do
        AdmissionType.stub(:new).with({'these' => 'params'}) { mock_admission_type(:save => false) }
        post :create, :admission_type => {'these' => 'params'}
        assigns(:admission_type).should be(mock_admission_type)
      end

      it "re-renders the 'new' template" do
        AdmissionType.stub(:new) { mock_admission_type(:save => false) }
        post :create, :admission_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested admission_type" do
        AdmissionType.should_receive(:find).with("37") { mock_admission_type }
        mock_admission_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :admission_type => {'these' => 'params'}
      end

      it "assigns the requested admission_type as @admission_type" do
        AdmissionType.stub(:find) { mock_admission_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:admission_type).should be(mock_admission_type)
      end

      it "redirects to the admission_type" do
        AdmissionType.stub(:find) { mock_admission_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(admission_type_url(mock_admission_type))
      end
    end

    describe "with invalid params" do
      it "assigns the admission_type as @admission_type" do
        AdmissionType.stub(:find) { mock_admission_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:admission_type).should be(mock_admission_type)
      end

      it "re-renders the 'edit' template" do
        AdmissionType.stub(:find) { mock_admission_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested admission_type" do
      AdmissionType.should_receive(:find).with("37") { mock_admission_type }
      mock_admission_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admission_types list" do
      AdmissionType.stub(:find) { mock_admission_type }
      delete :destroy, :id => "1"
      response.should redirect_to(admission_types_url)
    end
  end

end
