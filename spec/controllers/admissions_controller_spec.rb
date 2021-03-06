require 'spec_helper'

describe AdmissionsController do

  def mock_admission(stubs={})
    (@mock_admission ||= mock_model(Admission).as_null_object).tap do |admission|
      admission.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all admissions as @admissions" do
      Admission.stub(:all) { [mock_admission] }
      get :index
      assigns(:admissions).should eq([mock_admission])
    end
  end

  describe "GET show" do
    it "assigns the requested admission as @admission" do
      Admission.stub(:find).with("37") { mock_admission }
      get :show, :id => "37"
      assigns(:admission).should be(mock_admission)
    end
  end

  describe "GET new" do
    it "assigns a new admission as @admission" do
      Admission.stub(:new) { mock_admission }
      get :new
      assigns(:admission).should be(mock_admission)
    end
  end

  describe "GET edit" do
    it "assigns the requested admission as @admission" do
      Admission.stub(:find).with("37") { mock_admission }
      get :edit, :id => "37"
      assigns(:admission).should be(mock_admission)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created admission as @admission" do
        Admission.stub(:new).with({'these' => 'params'}) { mock_admission(:save => true) }
        post :create, :admission => {'these' => 'params'}
        assigns(:admission).should be(mock_admission)
      end

      it "redirects to the created admission" do
        Admission.stub(:new) { mock_admission(:save => true) }
        post :create, :admission => {}
        response.should redirect_to(admission_url(mock_admission))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved admission as @admission" do
        Admission.stub(:new).with({'these' => 'params'}) { mock_admission(:save => false) }
        post :create, :admission => {'these' => 'params'}
        assigns(:admission).should be(mock_admission)
      end

      it "re-renders the 'new' template" do
        Admission.stub(:new) { mock_admission(:save => false) }
        post :create, :admission => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested admission" do
        Admission.should_receive(:find).with("37") { mock_admission }
        mock_admission.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :admission => {'these' => 'params'}
      end

      it "assigns the requested admission as @admission" do
        Admission.stub(:find) { mock_admission(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:admission).should be(mock_admission)
      end

      it "redirects to the admission" do
        Admission.stub(:find) { mock_admission(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(admission_url(mock_admission))
      end
    end

    describe "with invalid params" do
      it "assigns the admission as @admission" do
        Admission.stub(:find) { mock_admission(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:admission).should be(mock_admission)
      end

      it "re-renders the 'edit' template" do
        Admission.stub(:find) { mock_admission(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested admission" do
      Admission.should_receive(:find).with("37") { mock_admission }
      mock_admission.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the admissions list" do
      Admission.stub(:find) { mock_admission }
      delete :destroy, :id => "1"
      response.should redirect_to(admissions_url)
    end
  end

end
