require 'spec_helper'

describe CollegesController do

  def mock_college(stubs={})
    (@mock_college ||= mock_model(College).as_null_object).tap do |college|
      college.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all colleges as @colleges" do
      College.stub(:all) { [mock_college] }
      get :index
      assigns(:colleges).should eq([mock_college])
    end
  end

  describe "GET show" do
    it "assigns the requested college as @college" do
      College.stub(:find).with("37") { mock_college }
      get :show, :id => "37"
      assigns(:college).should be(mock_college)
    end
  end

  describe "GET new" do
    it "assigns a new college as @college" do
      College.stub(:new) { mock_college }
      get :new
      assigns(:college).should be(mock_college)
    end
  end

  describe "GET edit" do
    it "assigns the requested college as @college" do
      College.stub(:find).with("37") { mock_college }
      get :edit, :id => "37"
      assigns(:college).should be(mock_college)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created college as @college" do
        College.stub(:new).with({'these' => 'params'}) { mock_college(:save => true) }
        post :create, :college => {'these' => 'params'}
        assigns(:college).should be(mock_college)
      end

      it "redirects to the created college" do
        College.stub(:new) { mock_college(:save => true) }
        post :create, :college => {}
        response.should redirect_to(college_url(mock_college))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved college as @college" do
        College.stub(:new).with({'these' => 'params'}) { mock_college(:save => false) }
        post :create, :college => {'these' => 'params'}
        assigns(:college).should be(mock_college)
      end

      it "re-renders the 'new' template" do
        College.stub(:new) { mock_college(:save => false) }
        post :create, :college => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested college" do
        College.should_receive(:find).with("37") { mock_college }
        mock_college.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :college => {'these' => 'params'}
      end

      it "assigns the requested college as @college" do
        College.stub(:find) { mock_college(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:college).should be(mock_college)
      end

      it "redirects to the college" do
        College.stub(:find) { mock_college(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(college_url(mock_college))
      end
    end

    describe "with invalid params" do
      it "assigns the college as @college" do
        College.stub(:find) { mock_college(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:college).should be(mock_college)
      end

      it "re-renders the 'edit' template" do
        College.stub(:find) { mock_college(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested college" do
      College.should_receive(:find).with("37") { mock_college }
      mock_college.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the colleges list" do
      College.stub(:find) { mock_college }
      delete :destroy, :id => "1"
      response.should redirect_to(colleges_url)
    end
  end

end
