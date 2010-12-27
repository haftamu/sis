require 'spec_helper'

describe FamilyBackgroundsController do

  def mock_family_background(stubs={})
    (@mock_family_background ||= mock_model(FamilyBackground).as_null_object).tap do |family_background|
      family_background.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all family_backgrounds as @family_backgrounds" do
      FamilyBackground.stub(:all) { [mock_family_background] }
      get :index
      assigns(:family_backgrounds).should eq([mock_family_background])
    end
  end

  describe "GET show" do
    it "assigns the requested family_background as @family_background" do
      FamilyBackground.stub(:find).with("37") { mock_family_background }
      get :show, :id => "37"
      assigns(:family_background).should be(mock_family_background)
    end
  end

  describe "GET new" do
    it "assigns a new family_background as @family_background" do
      FamilyBackground.stub(:new) { mock_family_background }
      get :new
      assigns(:family_background).should be(mock_family_background)
    end
  end

  describe "GET edit" do
    it "assigns the requested family_background as @family_background" do
      FamilyBackground.stub(:find).with("37") { mock_family_background }
      get :edit, :id => "37"
      assigns(:family_background).should be(mock_family_background)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created family_background as @family_background" do
        FamilyBackground.stub(:new).with({'these' => 'params'}) { mock_family_background(:save => true) }
        post :create, :family_background => {'these' => 'params'}
        assigns(:family_background).should be(mock_family_background)
      end

      it "redirects to the created family_background" do
        FamilyBackground.stub(:new) { mock_family_background(:save => true) }
        post :create, :family_background => {}
        response.should redirect_to(family_background_url(mock_family_background))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved family_background as @family_background" do
        FamilyBackground.stub(:new).with({'these' => 'params'}) { mock_family_background(:save => false) }
        post :create, :family_background => {'these' => 'params'}
        assigns(:family_background).should be(mock_family_background)
      end

      it "re-renders the 'new' template" do
        FamilyBackground.stub(:new) { mock_family_background(:save => false) }
        post :create, :family_background => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested family_background" do
        FamilyBackground.should_receive(:find).with("37") { mock_family_background }
        mock_family_background.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :family_background => {'these' => 'params'}
      end

      it "assigns the requested family_background as @family_background" do
        FamilyBackground.stub(:find) { mock_family_background(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:family_background).should be(mock_family_background)
      end

      it "redirects to the family_background" do
        FamilyBackground.stub(:find) { mock_family_background(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(family_background_url(mock_family_background))
      end
    end

    describe "with invalid params" do
      it "assigns the family_background as @family_background" do
        FamilyBackground.stub(:find) { mock_family_background(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:family_background).should be(mock_family_background)
      end

      it "re-renders the 'edit' template" do
        FamilyBackground.stub(:find) { mock_family_background(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested family_background" do
      FamilyBackground.should_receive(:find).with("37") { mock_family_background }
      mock_family_background.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the family_backgrounds list" do
      FamilyBackground.stub(:find) { mock_family_background }
      delete :destroy, :id => "1"
      response.should redirect_to(family_backgrounds_url)
    end
  end

end
