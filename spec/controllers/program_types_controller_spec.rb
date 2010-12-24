require 'spec_helper'

describe ProgramTypesController do

  def mock_program_type(stubs={})
    (@mock_program_type ||= mock_model(ProgramType).as_null_object).tap do |program_type|
      program_type.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all program_types as @program_types" do
      ProgramType.stub(:all) { [mock_program_type] }
      get :index
      assigns(:program_types).should eq([mock_program_type])
    end
  end

  describe "GET show" do
    it "assigns the requested program_type as @program_type" do
      ProgramType.stub(:find).with("37") { mock_program_type }
      get :show, :id => "37"
      assigns(:program_type).should be(mock_program_type)
    end
  end

  describe "GET new" do
    it "assigns a new program_type as @program_type" do
      ProgramType.stub(:new) { mock_program_type }
      get :new
      assigns(:program_type).should be(mock_program_type)
    end
  end

  describe "GET edit" do
    it "assigns the requested program_type as @program_type" do
      ProgramType.stub(:find).with("37") { mock_program_type }
      get :edit, :id => "37"
      assigns(:program_type).should be(mock_program_type)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created program_type as @program_type" do
        ProgramType.stub(:new).with({'these' => 'params'}) { mock_program_type(:save => true) }
        post :create, :program_type => {'these' => 'params'}
        assigns(:program_type).should be(mock_program_type)
      end

      it "redirects to the created program_type" do
        ProgramType.stub(:new) { mock_program_type(:save => true) }
        post :create, :program_type => {}
        response.should redirect_to(program_type_url(mock_program_type))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved program_type as @program_type" do
        ProgramType.stub(:new).with({'these' => 'params'}) { mock_program_type(:save => false) }
        post :create, :program_type => {'these' => 'params'}
        assigns(:program_type).should be(mock_program_type)
      end

      it "re-renders the 'new' template" do
        ProgramType.stub(:new) { mock_program_type(:save => false) }
        post :create, :program_type => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested program_type" do
        ProgramType.should_receive(:find).with("37") { mock_program_type }
        mock_program_type.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :program_type => {'these' => 'params'}
      end

      it "assigns the requested program_type as @program_type" do
        ProgramType.stub(:find) { mock_program_type(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:program_type).should be(mock_program_type)
      end

      it "redirects to the program_type" do
        ProgramType.stub(:find) { mock_program_type(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(program_type_url(mock_program_type))
      end
    end

    describe "with invalid params" do
      it "assigns the program_type as @program_type" do
        ProgramType.stub(:find) { mock_program_type(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:program_type).should be(mock_program_type)
      end

      it "re-renders the 'edit' template" do
        ProgramType.stub(:find) { mock_program_type(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested program_type" do
      ProgramType.should_receive(:find).with("37") { mock_program_type }
      mock_program_type.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the program_types list" do
      ProgramType.stub(:find) { mock_program_type }
      delete :destroy, :id => "1"
      response.should redirect_to(program_types_url)
    end
  end

end
