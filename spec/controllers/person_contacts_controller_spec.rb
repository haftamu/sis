require 'spec_helper'

describe PersonContactsController do

  def mock_person_contact(stubs={})
    (@mock_person_contact ||= mock_model(PersonContact).as_null_object).tap do |person_contact|
      person_contact.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all person_contacts as @person_contacts" do
      PersonContact.stub(:all) { [mock_person_contact] }
      get :index
      assigns(:person_contacts).should eq([mock_person_contact])
    end
  end

  describe "GET show" do
    it "assigns the requested person_contact as @person_contact" do
      PersonContact.stub(:find).with("37") { mock_person_contact }
      get :show, :id => "37"
      assigns(:person_contact).should be(mock_person_contact)
    end
  end

  describe "GET new" do
    it "assigns a new person_contact as @person_contact" do
      PersonContact.stub(:new) { mock_person_contact }
      get :new
      assigns(:person_contact).should be(mock_person_contact)
    end
  end

  describe "GET edit" do
    it "assigns the requested person_contact as @person_contact" do
      PersonContact.stub(:find).with("37") { mock_person_contact }
      get :edit, :id => "37"
      assigns(:person_contact).should be(mock_person_contact)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created person_contact as @person_contact" do
        PersonContact.stub(:new).with({'these' => 'params'}) { mock_person_contact(:save => true) }
        post :create, :person_contact => {'these' => 'params'}
        assigns(:person_contact).should be(mock_person_contact)
      end

      it "redirects to the created person_contact" do
        PersonContact.stub(:new) { mock_person_contact(:save => true) }
        post :create, :person_contact => {}
        response.should redirect_to(person_contact_url(mock_person_contact))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved person_contact as @person_contact" do
        PersonContact.stub(:new).with({'these' => 'params'}) { mock_person_contact(:save => false) }
        post :create, :person_contact => {'these' => 'params'}
        assigns(:person_contact).should be(mock_person_contact)
      end

      it "re-renders the 'new' template" do
        PersonContact.stub(:new) { mock_person_contact(:save => false) }
        post :create, :person_contact => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested person_contact" do
        PersonContact.should_receive(:find).with("37") { mock_person_contact }
        mock_person_contact.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :person_contact => {'these' => 'params'}
      end

      it "assigns the requested person_contact as @person_contact" do
        PersonContact.stub(:find) { mock_person_contact(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:person_contact).should be(mock_person_contact)
      end

      it "redirects to the person_contact" do
        PersonContact.stub(:find) { mock_person_contact(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(person_contact_url(mock_person_contact))
      end
    end

    describe "with invalid params" do
      it "assigns the person_contact as @person_contact" do
        PersonContact.stub(:find) { mock_person_contact(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:person_contact).should be(mock_person_contact)
      end

      it "re-renders the 'edit' template" do
        PersonContact.stub(:find) { mock_person_contact(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested person_contact" do
      PersonContact.should_receive(:find).with("37") { mock_person_contact }
      mock_person_contact.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the person_contacts list" do
      PersonContact.stub(:find) { mock_person_contact }
      delete :destroy, :id => "1"
      response.should redirect_to(person_contacts_url)
    end
  end

end
