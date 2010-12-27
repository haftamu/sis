class StudentPublicationsController < ApplicationController
  # GET /student_publications
  # GET /student_publications.xml
  def index
    @student_publications = StudentPublication.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_publications }
    end
  end

  # GET /student_publications/1
  # GET /student_publications/1.xml
  def show
    @student_publication = StudentPublication.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_publication }
    end
  end

  # GET /student_publications/new
  # GET /student_publications/new.xml
  def new
    @student_publication = StudentPublication.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_publication }
    end
  end

  # GET /student_publications/1/edit
  def edit
    @student_publication = StudentPublication.find(params[:id])
  end

  # POST /student_publications
  # POST /student_publications.xml
  def create
    @student_publication = StudentPublication.new(params[:student_publication])

    respond_to do |format|
      if @student_publication.save
        format.html { redirect_to(@student_publication, :notice => 'Student publication was successfully created.') }
        format.xml  { render :xml => @student_publication, :status => :created, :location => @student_publication }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_publication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_publications/1
  # PUT /student_publications/1.xml
  def update
    @student_publication = StudentPublication.find(params[:id])

    respond_to do |format|
      if @student_publication.update_attributes(params[:student_publication])
        format.html { redirect_to(@student_publication, :notice => 'Student publication was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_publication.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_publications/1
  # DELETE /student_publications/1.xml
  def destroy
    @student_publication = StudentPublication.find(params[:id])
    @student_publication.destroy

    respond_to do |format|
      format.html { redirect_to(student_publications_url) }
      format.xml  { head :ok }
    end
  end
end
