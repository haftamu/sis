require 'spec_helper'

describe AcademicCalendarsController do

  def mock_academic_calendar(stubs={})
    (@mock_academic_calendar ||= mock_model(AcademicCalendar).as_null_object).tap do |academic_calendar|
      academic_calendar.stub(stubs) unless stubs.empty?
    end
  end

  describe "GET index" do
    it "assigns all academic_calendars as @academic_calendars" do
      AcademicCalendar.stub(:all) { [mock_academic_calendar] }
      get :index
      assigns(:academic_calendars).should eq([mock_academic_calendar])
    end
  end

  describe "GET show" do
    it "assigns the requested academic_calendar as @academic_calendar" do
      AcademicCalendar.stub(:find).with("37") { mock_academic_calendar }
      get :show, :id => "37"
      assigns(:academic_calendar).should be(mock_academic_calendar)
    end
  end

  describe "GET new" do
    it "assigns a new academic_calendar as @academic_calendar" do
      AcademicCalendar.stub(:new) { mock_academic_calendar }
      get :new
      assigns(:academic_calendar).should be(mock_academic_calendar)
    end
  end

  describe "GET edit" do
    it "assigns the requested academic_calendar as @academic_calendar" do
      AcademicCalendar.stub(:find).with("37") { mock_academic_calendar }
      get :edit, :id => "37"
      assigns(:academic_calendar).should be(mock_academic_calendar)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created academic_calendar as @academic_calendar" do
        AcademicCalendar.stub(:new).with({'these' => 'params'}) { mock_academic_calendar(:save => true) }
        post :create, :academic_calendar => {'these' => 'params'}
        assigns(:academic_calendar).should be(mock_academic_calendar)
      end

      it "redirects to the created academic_calendar" do
        AcademicCalendar.stub(:new) { mock_academic_calendar(:save => true) }
        post :create, :academic_calendar => {}
        response.should redirect_to(academic_calendar_url(mock_academic_calendar))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved academic_calendar as @academic_calendar" do
        AcademicCalendar.stub(:new).with({'these' => 'params'}) { mock_academic_calendar(:save => false) }
        post :create, :academic_calendar => {'these' => 'params'}
        assigns(:academic_calendar).should be(mock_academic_calendar)
      end

      it "re-renders the 'new' template" do
        AcademicCalendar.stub(:new) { mock_academic_calendar(:save => false) }
        post :create, :academic_calendar => {}
        response.should render_template("new")
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested academic_calendar" do
        AcademicCalendar.should_receive(:find).with("37") { mock_academic_calendar }
        mock_academic_calendar.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :academic_calendar => {'these' => 'params'}
      end

      it "assigns the requested academic_calendar as @academic_calendar" do
        AcademicCalendar.stub(:find) { mock_academic_calendar(:update_attributes => true) }
        put :update, :id => "1"
        assigns(:academic_calendar).should be(mock_academic_calendar)
      end

      it "redirects to the academic_calendar" do
        AcademicCalendar.stub(:find) { mock_academic_calendar(:update_attributes => true) }
        put :update, :id => "1"
        response.should redirect_to(academic_calendar_url(mock_academic_calendar))
      end
    end

    describe "with invalid params" do
      it "assigns the academic_calendar as @academic_calendar" do
        AcademicCalendar.stub(:find) { mock_academic_calendar(:update_attributes => false) }
        put :update, :id => "1"
        assigns(:academic_calendar).should be(mock_academic_calendar)
      end

      it "re-renders the 'edit' template" do
        AcademicCalendar.stub(:find) { mock_academic_calendar(:update_attributes => false) }
        put :update, :id => "1"
        response.should render_template("edit")
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested academic_calendar" do
      AcademicCalendar.should_receive(:find).with("37") { mock_academic_calendar }
      mock_academic_calendar.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the academic_calendars list" do
      AcademicCalendar.stub(:find) { mock_academic_calendar }
      delete :destroy, :id => "1"
      response.should redirect_to(academic_calendars_url)
    end
  end

end
