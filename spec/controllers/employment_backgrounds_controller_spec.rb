require 'spec_helper'

describe EmploymentBackgroundsController do

  def mock_employment_background(stubs={})
    (@mock_employment_background ||= mock_model(EmploymentBackground).as_null_object).tap do |employment_background|
      employment_background.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all employment_backgrounds as @employment_backgrounds" do
      EmploymentBackground.stub(:all) { [mock_employment_background] }
      get :index
      assigns(:employment_backgrounds).should eq([mock_employment_background])
    end
  end

  describe "GET show" do
    it "assigns the requested employment_background as @employment_background" do
      EmploymentBackground.stub(:find).with("37") { mock_employment_background }
      get :show, :id => "37"
      assigns(:employment_background).should be(mock_employment_background)
    end
  end

  describe "GET new" do
    it "assigns a new employment_background as @employment_background" do
      EmploymentBackground.stub(:new) { mock_employment_background }
      get :new
      assigns(:employment_background).should be(mock_employment_background)
    end
  end

  describe "GET edit" do
    it "assigns the requested employment_background as @employment_background" do
      EmploymentBackground.stub(:find).with("37") { mock_employment_background }
      get :edit, :id => "37"
      assigns(:employment_background).should be(mock_employment_background)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created employment_background as @employment_background" do
        EmploymentBackground.stub(:new).with({'these' => 'params'}) { mock_employment_background(:save => true) }
        post :create, :employment_background => {'these' => 'params'}
        assigns(:employment_background).should be(mock_employment_background)
      end

      it "redirects to the created employment_background" do
        EmploymentBackground.stub(:new) { mock_employment_background(:save => true) }
        post :create, :employment_background => {}
        response.should redirect_to(employment_background_url(mock_employment_background))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employment_background as @employment_background" do
        EmploymentBackground.stub(:new).with({'these' => 'params'}) { mock_employment_background(:save => false) }
        post :create, :employment_background => {'these' => 'params'}
        assigns(:employment_background).should be(mock_employment_background)
      end

      it "re-renders the 'new' template" do
        EmploymentBackground.stub(:new) { mock_employment_background(:save => false) }
        post :create, :employment_background => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested employment_background" do
        EmploymentBackground.should_receive(:find).with("37") { mock_employment_background }
        mock_employment_background.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employment_background => {'these' => 'params'}
      end

      it "assigns the requested employment_background as @employment_background" do
        EmploymentBackground.stub(:find) { mock_employment_background(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:employment_background).should be(mock_employment_background)
      end

      it "redirects to the employment_background" do
        EmploymentBackground.stub(:find) { mock_employment_background(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(employment_background_url(mock_employment_background))
      end
    end

    describe "with invalid params" do
      it "assigns the employment_background as @employment_background" do
        EmploymentBackground.stub(:find) { mock_employment_background(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:employment_background).should be(mock_employment_background)
      end

      it "re-renders the 'edit' template" do
        EmploymentBackground.stub(:find) { mock_employment_background(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested employment_background" do
      EmploymentBackground.should_receive(:find).with("37") { mock_employment_background }
      mock_employment_background.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the employment_backgrounds list" do
      EmploymentBackground.stub(:find) { mock_employment_background }
      delete :destroy, :id => "1"
      response.should redirect_to(employment_backgrounds_url)
    end
  end

end
