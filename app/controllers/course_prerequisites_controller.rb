class CoursePrerequisitesController < ApplicationController
  # GET /course_prerequisites
  # GET /course_prerequisites.xml
  def index
    @course_prerequisites = CoursePrerequisite.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @course_prerequisites }
    end
  end

  # GET /course_prerequisites/1
  # GET /course_prerequisites/1.xml
  def show
    @course_prerequisite = CoursePrerequisite.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @course_prerequisite }
    end
  end

  # GET /course_prerequisites/new
  # GET /course_prerequisites/new.xml
  def new
    @course_prerequisite = CoursePrerequisite.new
    @courses=Course.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @course_prerequisite }
    end
  end

  # GET /course_prerequisites/1/edit
  def edit
    @course_prerequisite = CoursePrerequisite.find(params[:id])
    @courses=Course.all
  end

  # POST /course_prerequisites
  # POST /course_prerequisites.xml
  def create
    @course_prerequisite = CoursePrerequisite.new(params[:course_prerequisite])

    respond_to do |format|
      if @course_prerequisite.save
        format.html { redirect_to(@course_prerequisite, :notice => 'Course prerequisite was successfully created.') }
        format.xml  { render :xml => @course_prerequisite, :status => :created, :location => @course_prerequisite }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @course_prerequisite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /course_prerequisites/1
  # PUT /course_prerequisites/1.xml
  def update
    @course_prerequisite = CoursePrerequisite.find(params[:id])

    respond_to do |format|
      if @course_prerequisite.update_attributes(params[:course_prerequisite])
        format.html { redirect_to(@course_prerequisite, :notice => 'Course prerequisite was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @course_prerequisite.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /course_prerequisites/1
  # DELETE /course_prerequisites/1.xml
  def destroy
    @course_prerequisite = CoursePrerequisite.find(params[:id])
    @course_prerequisite.destroy

    respond_to do |format|
      format.html { redirect_to(course_prerequisites_url) }
      format.xml  { head :ok }
    end
  end
end
