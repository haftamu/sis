class StudentsController < ApplicationController
  # GET /students
  # GET /colleges.xml
  def index        
    @colleges = College.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @colleges }
    end
  end
  # GET /student/1
  # GET /students/1.xml
  def show
    @student = Student.find(params[:id])
  end
  
  # GET /students/new
  # GET /students/new.xml
  def new
    @student = Student.new
  end

   # GET /students/1/edit
  def edit
    @student = Student.find(params[:id])
    
  end

  # POST /students
  # POST /students.xml
  def create
    @student = Student.new(params[:student])

    respond_to do |format|
      if @college.save
        format.html { redirect_to(@student, :notice => 'Student was successfully created.') }
        format.xml  { render :xml => @student, :status => :created, :location => @student }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end
  # PUT /student/1
  # PUT /student/1.xml
  def update
    @student = Student.find(params[:id])

    respond_to do |format|
      if @student.update_attributes(params[:student])
        format.html { redirect_to(@student, :notice => 'Student was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student/1
  # DELETE /student/1.xml
  def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
    end
  end
  
end
