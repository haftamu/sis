require 'spec_helper'

describe EnrolmentTypesController do

  def mock_enrolment_type(stubs={})
    (@mock_enrolment_type ||= mock_model(EnrolmentType).as_null_object).tap do |enrolment_type|
      enrolment_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all enrolment_types as @enrolment_types" do
      EnrolmentType.stub(:all) { [mock_enrolment_type] }
      get :index
      assigns(:enrolment_types).should eq([mock_enrolment_type])
    end
  end

  describe "GET show" do
    it "assigns the requested enrolment_type as @enrolment_type" do
      EnrolmentType.stub(:find).with("37") { mock_enrolment_type }
      get :show, :id => "37"
      assigns(:enrolment_type).should be(mock_enrolment_type)
    end
  end

  describe "GET new" do
    it "assigns a new enrolment_type as @enrolment_type" do
      EnrolmentType.stub(:new) { mock_enrolment_type }
      get :new
      assigns(:enrolment_type).should be(mock_enrolment_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested enrolment_type as @enrolment_type" do
      EnrolmentType.stub(:find).with("37") { mock_enrolment_type }
      get :edit, :id => "37"
      assigns(:enrolment_type).should be(mock_enrolment_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created enrolment_type as @enrolment_type" do
        EnrolmentType.stub(:new).with({'these' => 'params'}) { mock_enrolment_type(:save => true) }
        post :create, :enrolment_type => {'these' => 'params'}
        assigns(:enrolment_type).should be(mock_enrolment_type)
      end

      it "redirects to the created enrolment_type" do
        EnrolmentType.stub(:new) { mock_enrolment_type(:save => true) }
        post :create, :enrolment_type => {}
        response.should redirect_to(enrolment_type_url(mock_enrolment_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved enrolment_type as @enrolment_type" do
        EnrolmentType.stub(:new).with({'these' => 'params'}) { mock_enrolment_type(:save => false) }
        post :create, :enrolment_type => {'these' => 'params'}
        assigns(:enrolment_type).should be(mock_enrolment_type)
      end

      it "re-renders the 'new' template" do
        EnrolmentType.stub(:new) { mock_enrolment_type(:save => false) }
        post :create, :enrolment_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested enrolment_type" do
        EnrolmentType.should_receive(:find).with("37") { mock_enrolment_type }
        mock_enrolment_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :enrolment_type => {'these' => 'params'}
      end

      it "assigns the requested enrolment_type as @enrolment_type" do
        EnrolmentType.stub(:find) { mock_enrolment_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:enrolment_type).should be(mock_enrolment_type)
      end

      it "redirects to the enrolment_type" do
        EnrolmentType.stub(:find) { mock_enrolment_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(enrolment_type_url(mock_enrolment_type))
      end
    end

    describe "with invalid params" do
      it "assigns the enrolment_type as @enrolment_type" do
        EnrolmentType.stub(:find) { mock_enrolment_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:enrolment_type).should be(mock_enrolment_type)
      end

      it "re-renders the 'edit' template" do
        EnrolmentType.stub(:find) { mock_enrolment_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested enrolment_type" do
      EnrolmentType.should_receive(:find).with("37") { mock_enrolment_type }
      mock_enrolment_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the enrolment_types list" do
      EnrolmentType.stub(:find) { mock_enrolment_type }
      delete :destroy, :id => "1"
      response.should redirect_to(enrolment_types_url)
    end
  end

end
