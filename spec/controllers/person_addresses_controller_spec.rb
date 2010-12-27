require 'spec_helper'

describe PersonAddressesController do

  def mock_person_address(stubs={})
    (@mock_person_address ||= mock_model(PersonAddress).as_null_object).tap do |person_address|
      person_address.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all person_addresses as @person_addresses" do
      PersonAddress.stub(:all) { [mock_person_address] }
      get :index
      assigns(:person_addresses).should eq([mock_person_address])
    end
  end

  describe "GET show" do
    it "assigns the requested person_address as @person_address" do
      PersonAddress.stub(:find).with("37") { mock_person_address }
      get :show, :id => "37"
      assigns(:person_address).should be(mock_person_address)
    end
  end

  describe "GET new" do
    it "assigns a new person_address as @person_address" do
      PersonAddress.stub(:new) { mock_person_address }
      get :new
      assigns(:person_address).should be(mock_person_address)
    end
  end

  describe "GET edit" do
    it "assigns the requested person_address as @person_address" do
      PersonAddress.stub(:find).with("37") { mock_person_address }
      get :edit, :id => "37"
      assigns(:person_address).should be(mock_person_address)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created person_address as @person_address" do
        PersonAddress.stub(:new).with({'these' => 'params'}) { mock_person_address(:save => true) }
        post :create, :person_address => {'these' => 'params'}
        assigns(:person_address).should be(mock_person_address)
      end

      it "redirects to the created person_address" do
        PersonAddress.stub(:new) { mock_person_address(:save => true) }
        post :create, :person_address => {}
        response.should redirect_to(person_address_url(mock_person_address))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved person_address as @person_address" do
        PersonAddress.stub(:new).with({'these' => 'params'}) { mock_person_address(:save => false) }
        post :create, :person_address => {'these' => 'params'}
        assigns(:person_address).should be(mock_person_address)
      end

      it "re-renders the 'new' template" do
        PersonAddress.stub(:new) { mock_person_address(:save => false) }
        post :create, :person_address => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested person_address" do
        PersonAddress.should_receive(:find).with("37") { mock_person_address }
        mock_person_address.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :person_address => {'these' => 'params'}
      end

      it "assigns the requested person_address as @person_address" do
        PersonAddress.stub(:find) { mock_person_address(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:person_address).should be(mock_person_address)
      end

      it "redirects to the person_address" do
        PersonAddress.stub(:find) { mock_person_address(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(person_address_url(mock_person_address))
      end
    end

    describe "with invalid params" do
      it "assigns the person_address as @person_address" do
        PersonAddress.stub(:find) { mock_person_address(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:person_address).should be(mock_person_address)
      end

      it "re-renders the 'edit' template" do
        PersonAddress.stub(:find) { mock_person_address(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested person_address" do
      PersonAddress.should_receive(:find).with("37") { mock_person_address }
      mock_person_address.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the person_addresses list" do
      PersonAddress.stub(:find) { mock_person_address }
      delete :destroy, :id => "1"
      response.should redirect_to(person_addresses_url)
    end
  end

end
