class StudentCorrespondencesController < ApplicationController
  # GET /student_correspondences
  # GET /student_correspondences.xml
  def index
    @student_correspondences = StudentCorrespondence.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_correspondences }
    end
  end

  # GET /student_correspondences/1
  # GET /student_correspondences/1.xml
  def show
    @student_correspondence = StudentCorrespondence.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_correspondence }
    end
  end

  # GET /student_correspondences/new
  # GET /student_correspondences/new.xml
  def new
    @student_correspondence = StudentCorrespondence.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_correspondence }
    end
  end

  # GET /student_correspondences/1/edit
  def edit
    @student_correspondence = StudentCorrespondence.find(params[:id])
  end

  # POST /student_correspondences
  # POST /student_correspondences.xml
  def create
    @student_correspondence = StudentCorrespondence.new(params[:student_correspondence])

    respond_to do |format|
      if @student_correspondence.save
        format.html { redirect_to(@student_correspondence, :notice => 'Student correspondence was successfully created.') }
        format.xml  { render :xml => @student_correspondence, :status => :created, :location => @student_correspondence }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_correspondence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_correspondences/1
  # PUT /student_correspondences/1.xml
  def update
    @student_correspondence = StudentCorrespondence.find(params[:id])

    respond_to do |format|
      if @student_correspondence.update_attributes(params[:student_correspondence])
        format.html { redirect_to(@student_correspondence, :notice => 'Student correspondence was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_correspondence.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_correspondences/1
  # DELETE /student_correspondences/1.xml
  def destroy
    @student_correspondence = StudentCorrespondence.find(params[:id])
    @student_correspondence.destroy

    respond_to do |format|
      format.html { redirect_to(student_correspondences_url) }
      format.xml  { head :ok }
    end
  end
end
