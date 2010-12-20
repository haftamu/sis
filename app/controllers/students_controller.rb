class StudentsController < ApplicationController
  def search
     
  end
  
  def index
    @student = Student.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student }
    end
  end
  
  def new
    @student = Student.new
   
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @student }
    end
  end
  
  def create
    @student = Student.new(params[:student])
    
    respond_to do |format|
      if @student.save
        format.html { redirect_to(:action => :index) }
        format.xml  { render :xml => @student, :status => :created, :location => @student  }
        flash[:notice] = 'Student was successfully created.'
      else
        
        format.html { render :action => "new" }
        format.xml  { render :xml => @student.errors, :status => :unprocessable_entity }
      end
    end
  end

def show
    @student = Student.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student }
    end
  end

def destroy
    @student = Student.find(params[:id])
    @student.destroy

    respond_to do |format|
      format.html { redirect_to(students_url) }
      format.xml  { head :ok }
   end
  end

end
