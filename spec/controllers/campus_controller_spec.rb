require 'spec_helper'

describe CampusController do

  def mock_campu(stubs={})
    (@mock_campu ||= mock_model(Campu).as_null_object).tap do |campu|
      campu.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all campus as @campus" do
      Campu.stub(:all) { [mock_campu] }
      get :index
      assigns(:campus).should eq([mock_campu])
    end
  end

  describe "GET show" do
    it "assigns the requested campu as @campu" do
      Campu.stub(:find).with("37") { mock_campu }
      get :show, :id => "37"
      assigns(:campu).should be(mock_campu)
    end
  end

  describe "GET new" do
    it "assigns a new campu as @campu" do
      Campu.stub(:new) { mock_campu }
      get :new
      assigns(:campu).should be(mock_campu)
    end
  end

  describe "GET edit" do
    it "assigns the requested campu as @campu" do
      Campu.stub(:find).with("37") { mock_campu }
      get :edit, :id => "37"
      assigns(:campu).should be(mock_campu)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created campu as @campu" do
        Campu.stub(:new).with({'these' => 'params'}) { mock_campu(:save => true) }
        post :create, :campu => {'these' => 'params'}
        assigns(:campu).should be(mock_campu)
      end

      it "redirects to the created campu" do
        Campu.stub(:new) { mock_campu(:save => true) }
        post :create, :campu => {}
        response.should redirect_to(campu_url(mock_campu))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved campu as @campu" do
        Campu.stub(:new).with({'these' => 'params'}) { mock_campu(:save => false) }
        post :create, :campu => {'these' => 'params'}
        assigns(:campu).should be(mock_campu)
      end

      it "re-renders the 'new' template" do
        Campu.stub(:new) { mock_campu(:save => false) }
        post :create, :campu => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested campu" do
        Campu.should_receive(:find).with("37") { mock_campu }
        mock_campu.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :campu => {'these' => 'params'}
      end

      it "assigns the requested campu as @campu" do
        Campu.stub(:find) { mock_campu(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:campu).should be(mock_campu)
      end

      it "redirects to the campu" do
        Campu.stub(:find) { mock_campu(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(campu_url(mock_campu))
      end
    end

    describe "with invalid params" do
      it "assigns the campu as @campu" do
        Campu.stub(:find) { mock_campu(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:campu).should be(mock_campu)
      end

      it "re-renders the 'edit' template" do
        Campu.stub(:find) { mock_campu(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested campu" do
      Campu.should_receive(:find).with("37") { mock_campu }
      mock_campu.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the campus list" do
      Campu.stub(:find) { mock_campu }
      delete :destroy, :id => "1"
      response.should redirect_to(campus_url)
    end
  end

end
