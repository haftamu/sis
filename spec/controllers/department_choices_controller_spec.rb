require 'spec_helper'

describe DepartmentChoicesController do

  def mock_department_choice(stubs={})
    (@mock_department_choice ||= mock_model(DepartmentChoice).as_null_object).tap do |department_choice|
      department_choice.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all department_choices as @department_choices" do
      DepartmentChoice.stub(:all) { [mock_department_choice] }
      get :index
      assigns(:department_choices).should eq([mock_department_choice])
    end
  end

  describe "GET show" do
    it "assigns the requested department_choice as @department_choice" do
      DepartmentChoice.stub(:find).with("37") { mock_department_choice }
      get :show, :id => "37"
      assigns(:department_choice).should be(mock_department_choice)
    end
  end

  describe "GET new" do
    it "assigns a new department_choice as @department_choice" do
      DepartmentChoice.stub(:new) { mock_department_choice }
      get :new
      assigns(:department_choice).should be(mock_department_choice)
    end
  end

  describe "GET edit" do
    it "assigns the requested department_choice as @department_choice" do
      DepartmentChoice.stub(:find).with("37") { mock_department_choice }
      get :edit, :id => "37"
      assigns(:department_choice).should be(mock_department_choice)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created department_choice as @department_choice" do
        DepartmentChoice.stub(:new).with({'these' => 'params'}) { mock_department_choice(:save => true) }
        post :create, :department_choice => {'these' => 'params'}
        assigns(:department_choice).should be(mock_department_choice)
      end

      it "redirects to the created department_choice" do
        DepartmentChoice.stub(:new) { mock_department_choice(:save => true) }
        post :create, :department_choice => {}
        response.should redirect_to(department_choice_url(mock_department_choice))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved department_choice as @department_choice" do
        DepartmentChoice.stub(:new).with({'these' => 'params'}) { mock_department_choice(:save => false) }
        post :create, :department_choice => {'these' => 'params'}
        assigns(:department_choice).should be(mock_department_choice)
      end

      it "re-renders the 'new' template" do
        DepartmentChoice.stub(:new) { mock_department_choice(:save => false) }
        post :create, :department_choice => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested department_choice" do
        DepartmentChoice.should_receive(:find).with("37") { mock_department_choice }
        mock_department_choice.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :department_choice => {'these' => 'params'}
      end

      it "assigns the requested department_choice as @department_choice" do
        DepartmentChoice.stub(:find) { mock_department_choice(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:department_choice).should be(mock_department_choice)
      end

      it "redirects to the department_choice" do
        DepartmentChoice.stub(:find) { mock_department_choice(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(department_choice_url(mock_department_choice))
      end
    end

    describe "with invalid params" do
      it "assigns the department_choice as @department_choice" do
        DepartmentChoice.stub(:find) { mock_department_choice(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:department_choice).should be(mock_department_choice)
      end

      it "re-renders the 'edit' template" do
        DepartmentChoice.stub(:find) { mock_department_choice(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested department_choice" do
      DepartmentChoice.should_receive(:find).with("37") { mock_department_choice }
      mock_department_choice.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the department_choices list" do
      DepartmentChoice.stub(:find) { mock_department_choice }
      delete :destroy, :id => "1"
      response.should redirect_to(department_choices_url)
    end
  end

end
