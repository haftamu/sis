class OfferredCoursesController < ApplicationController
  # GET /offerred_courses
  # GET /offerred_courses.xml
  def index
    @offerred_courses = OfferredCourse.all
    @semesters = Semester.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @offerred_courses }
    end
  end

  # GET /offerred_courses/1
  # GET /offerred_courses/1.xml
  def show
    @offerred_course = OfferredCourse.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @offerred_course }
    end
  end

  # GET /offerred_courses/new
  # GET /offerred_courses/new.xml
  def new
    @offerred_course = OfferredCourse.new
    @semesters = Semester.all
    @courses=Course.all
    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @offerred_course }
    end
  end

  # GET /offerred_courses/1/edit
  def edit
    @offerred_course = OfferredCourse.find(params[:id])
    @semesters = Semester.all
    @courses=Course.all
  end

  # POST /offerred_courses
  # POST /offerred_courses.xml
  def create
    @offerred_course = OfferredCourse.new(params[:offerred_course])

    respond_to do |format|
      if @offerred_course.save
        format.html { redirect_to(@offerred_course, :notice => 'Offerred course was successfully created.') }
        format.xml  { render :xml => @offerred_course, :status => :created, :location => @offerred_course }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @offerred_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /offerred_courses/1
  # PUT /offerred_courses/1.xml
  def update
    @offerred_course = OfferredCourse.find(params[:id])

    respond_to do |format|
      if @offerred_course.update_attributes(params[:offerred_course])
        format.html { redirect_to(@offerred_course, :notice => 'Offerred course was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @offerred_course.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /offerred_courses/1
  # DELETE /offerred_courses/1.xml
  def destroy
    @offerred_course = OfferredCourse.find(params[:id])
    @offerred_course.destroy

    respond_to do |format|
      format.html { redirect_to(offerred_courses_url) }
      format.xml  { head :ok }
    end
  end
end
