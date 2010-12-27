require 'spec_helper'

describe HigerEducationBackgroundsController do

  def mock_higer_education_background(stubs={})
    (@mock_higer_education_background ||= mock_model(HigerEducationBackground).as_null_object).tap do |higer_education_background|
      higer_education_background.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all higer_education_backgrounds as @higer_education_backgrounds" do
      HigerEducationBackground.stub(:all) { [mock_higer_education_background] }
      get :index
      assigns(:higer_education_backgrounds).should eq([mock_higer_education_background])
    end
  end

  describe "GET show" do
    it "assigns the requested higer_education_background as @higer_education_background" do
      HigerEducationBackground.stub(:find).with("37") { mock_higer_education_background }
      get :show, :id => "37"
      assigns(:higer_education_background).should be(mock_higer_education_background)
    end
  end

  describe "GET new" do
    it "assigns a new higer_education_background as @higer_education_background" do
      HigerEducationBackground.stub(:new) { mock_higer_education_background }
      get :new
      assigns(:higer_education_background).should be(mock_higer_education_background)
    end
  end

  describe "GET edit" do
    it "assigns the requested higer_education_background as @higer_education_background" do
      HigerEducationBackground.stub(:find).with("37") { mock_higer_education_background }
      get :edit, :id => "37"
      assigns(:higer_education_background).should be(mock_higer_education_background)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created higer_education_background as @higer_education_background" do
        HigerEducationBackground.stub(:new).with({'these' => 'params'}) { mock_higer_education_background(:save => true) }
        post :create, :higer_education_background => {'these' => 'params'}
        assigns(:higer_education_background).should be(mock_higer_education_background)
      end

      it "redirects to the created higer_education_background" do
        HigerEducationBackground.stub(:new) { mock_higer_education_background(:save => true) }
        post :create, :higer_education_background => {}
        response.should redirect_to(higer_education_background_url(mock_higer_education_background))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved higer_education_background as @higer_education_background" do
        HigerEducationBackground.stub(:new).with({'these' => 'params'}) { mock_higer_education_background(:save => false) }
        post :create, :higer_education_background => {'these' => 'params'}
        assigns(:higer_education_background).should be(mock_higer_education_background)
      end

      it "re-renders the 'new' template" do
        HigerEducationBackground.stub(:new) { mock_higer_education_background(:save => false) }
        post :create, :higer_education_background => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested higer_education_background" do
        HigerEducationBackground.should_receive(:find).with("37") { mock_higer_education_background }
        mock_higer_education_background.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :higer_education_background => {'these' => 'params'}
      end

      it "assigns the requested higer_education_background as @higer_education_background" do
        HigerEducationBackground.stub(:find) { mock_higer_education_background(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:higer_education_background).should be(mock_higer_education_background)
      end

      it "redirects to the higer_education_background" do
        HigerEducationBackground.stub(:find) { mock_higer_education_background(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(higer_education_background_url(mock_higer_education_background))
      end
    end

    describe "with invalid params" do
      it "assigns the higer_education_background as @higer_education_background" do
        HigerEducationBackground.stub(:find) { mock_higer_education_background(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:higer_education_background).should be(mock_higer_education_background)
      end

      it "re-renders the 'edit' template" do
        HigerEducationBackground.stub(:find) { mock_higer_education_background(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested higer_education_background" do
      HigerEducationBackground.should_receive(:find).with("37") { mock_higer_education_background }
      mock_higer_education_background.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the higer_education_backgrounds list" do
      HigerEducationBackground.stub(:find) { mock_higer_education_background }
      delete :destroy, :id => "1"
      response.should redirect_to(higer_education_backgrounds_url)
    end
  end

end
