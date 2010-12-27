class StudentQualificationsController < ApplicationController
  # GET /student_qualifications
  # GET /student_qualifications.xml
  def index
    @student_qualifications = StudentQualification.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_qualifications }
    end
  end

  # GET /student_qualifications/1
  # GET /student_qualifications/1.xml
  def show
    @student_qualification = StudentQualification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_qualification }
    end
  end

  # GET /student_qualifications/new
  # GET /student_qualifications/new.xml
  def new
    @student_qualification = StudentQualification.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_qualification }
    end
  end

  # GET /student_qualifications/1/edit
  def edit
    @student_qualification = StudentQualification.find(params[:id])
  end

  # POST /student_qualifications
  # POST /student_qualifications.xml
  def create
    @student_qualification = StudentQualification.new(params[:student_qualification])

    respond_to do |format|
      if @student_qualification.save
        format.html { redirect_to(@student_qualification, :notice => 'Student qualification was successfully created.') }
        format.xml  { render :xml => @student_qualification, :status => :created, :location => @student_qualification }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_qualification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_qualifications/1
  # PUT /student_qualifications/1.xml
  def update
    @student_qualification = StudentQualification.find(params[:id])

    respond_to do |format|
      if @student_qualification.update_attributes(params[:student_qualification])
        format.html { redirect_to(@student_qualification, :notice => 'Student qualification was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_qualification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_qualifications/1
  # DELETE /student_qualifications/1.xml
  def destroy
    @student_qualification = StudentQualification.find(params[:id])
    @student_qualification.destroy

    respond_to do |format|
      format.html { redirect_to(student_qualifications_url) }
      format.xml  { head :ok }
    end
  end
end
