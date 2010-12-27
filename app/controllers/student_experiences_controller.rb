class StudentExperiencesController < ApplicationController
  # GET /student_experiences
  # GET /student_experiences.xml
  def index
    @student_experiences = StudentExperience.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_experiences }
    end
  end

  # GET /student_experiences/1
  # GET /student_experiences/1.xml
  def show
    @student_experience = StudentExperience.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_experience }
    end
  end

  # GET /student_experiences/new
  # GET /student_experiences/new.xml
  def new
    @student_experience = StudentExperience.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_experience }
    end
  end

  # GET /student_experiences/1/edit
  def edit
    @student_experience = StudentExperience.find(params[:id])
  end

  # POST /student_experiences
  # POST /student_experiences.xml
  def create
    @student_experience = StudentExperience.new(params[:student_experience])

    respond_to do |format|
      if @student_experience.save
        format.html { redirect_to(@student_experience, :notice => 'Student experience was successfully created.') }
        format.xml  { render :xml => @student_experience, :status => :created, :location => @student_experience }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_experiences/1
  # PUT /student_experiences/1.xml
  def update
    @student_experience = StudentExperience.find(params[:id])

    respond_to do |format|
      if @student_experience.update_attributes(params[:student_experience])
        format.html { redirect_to(@student_experience, :notice => 'Student experience was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_experience.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_experiences/1
  # DELETE /student_experiences/1.xml
  def destroy
    @student_experience = StudentExperience.find(params[:id])
    @student_experience.destroy

    respond_to do |format|
      format.html { redirect_to(student_experiences_url) }
      format.xml  { head :ok }
    end
  end
end
