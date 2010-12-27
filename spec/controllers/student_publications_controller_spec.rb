require 'spec_helper'

describe StudentPublicationsController do

  def mock_student_publication(stubs={})
    (@mock_student_publication ||= mock_model(StudentPublication).as_null_object).tap do |student_publication|
      student_publication.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all student_publications as @student_publications" do
      StudentPublication.stub(:all) { [mock_student_publication] }
      get :index
      assigns(:student_publications).should eq([mock_student_publication])
    end
  end

  describe "GET show" do
    it "assigns the requested student_publication as @student_publication" do
      StudentPublication.stub(:find).with("37") { mock_student_publication }
      get :show, :id => "37"
      assigns(:student_publication).should be(mock_student_publication)
    end
  end

  describe "GET new" do
    it "assigns a new student_publication as @student_publication" do
      StudentPublication.stub(:new) { mock_student_publication }
      get :new
      assigns(:student_publication).should be(mock_student_publication)
    end
  end

  describe "GET edit" do
    it "assigns the requested student_publication as @student_publication" do
      StudentPublication.stub(:find).with("37") { mock_student_publication }
      get :edit, :id => "37"
      assigns(:student_publication).should be(mock_student_publication)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created student_publication as @student_publication" do
        StudentPublication.stub(:new).with({'these' => 'params'}) { mock_student_publication(:save => true) }
        post :create, :student_publication => {'these' => 'params'}
        assigns(:student_publication).should be(mock_student_publication)
      end

      it "redirects to the created student_publication" do
        StudentPublication.stub(:new) { mock_student_publication(:save => true) }
        post :create, :student_publication => {}
        response.should redirect_to(student_publication_url(mock_student_publication))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved student_publication as @student_publication" do
        StudentPublication.stub(:new).with({'these' => 'params'}) { mock_student_publication(:save => false) }
        post :create, :student_publication => {'these' => 'params'}
        assigns(:student_publication).should be(mock_student_publication)
      end

      it "re-renders the 'new' template" do
        StudentPublication.stub(:new) { mock_student_publication(:save => false) }
        post :create, :student_publication => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested student_publication" do
        StudentPublication.should_receive(:find).with("37") { mock_student_publication }
        mock_student_publication.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :student_publication => {'these' => 'params'}
      end

      it "assigns the requested student_publication as @student_publication" do
        StudentPublication.stub(:find) { mock_student_publication(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:student_publication).should be(mock_student_publication)
      end

      it "redirects to the student_publication" do
        StudentPublication.stub(:find) { mock_student_publication(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(student_publication_url(mock_student_publication))
      end
    end

    describe "with invalid params" do
      it "assigns the student_publication as @student_publication" do
        StudentPublication.stub(:find) { mock_student_publication(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:student_publication).should be(mock_student_publication)
      end

      it "re-renders the 'edit' template" do
        StudentPublication.stub(:find) { mock_student_publication(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested student_publication" do
      StudentPublication.should_receive(:find).with("37") { mock_student_publication }
      mock_student_publication.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the student_publications list" do
      StudentPublication.stub(:find) { mock_student_publication }
      delete :destroy, :id => "1"
      response.should redirect_to(student_publications_url)
    end
  end

end
