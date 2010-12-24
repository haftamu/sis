class EnrolmentTypesController < ApplicationController
  # GET /enrolment_types
  # GET /enrolment_types.xml
  def index
    @enrolment_types = EnrolmentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @enrolment_types }
    end
  end

  # GET /enrolment_types/1
  # GET /enrolment_types/1.xml
  def show
    @enrolment_type = EnrolmentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @enrolment_type }
    end
  end

  # GET /enrolment_types/new
  # GET /enrolment_types/new.xml
  def new
    @enrolment_type = EnrolmentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @enrolment_type }
    end
  end

  # GET /enrolment_types/1/edit
  def edit
    @enrolment_type = EnrolmentType.find(params[:id])
  end

  # POST /enrolment_types
  # POST /enrolment_types.xml
  def create
    @enrolment_type = EnrolmentType.new(params[:enrolment_type])

    respond_to do |format|
      if @enrolment_type.save
        format.html { redirect_to(@enrolment_type, :notice => 'Enrolment type was successfully created.') }
        format.xml  { render :xml => @enrolment_type, :status => :created, :location => @enrolment_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @enrolment_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /enrolment_types/1
  # PUT /enrolment_types/1.xml
  def update
    @enrolment_type = EnrolmentType.find(params[:id])

    respond_to do |format|
      if @enrolment_type.update_attributes(params[:enrolment_type])
        format.html { redirect_to(@enrolment_type, :notice => 'Enrolment type was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @enrolment_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /enrolment_types/1
  # DELETE /enrolment_types/1.xml
  def destroy
    @enrolment_type = EnrolmentType.find(params[:id])
    @enrolment_type.destroy

    respond_to do |format|
      format.html { redirect_to(enrolment_types_url) }
      format.xml  { head :ok }
    end
  end
end
