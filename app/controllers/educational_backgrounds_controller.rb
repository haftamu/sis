class EducationalBackgroundsController < ApplicationController
  # GET /educational_backgrounds
  # GET /educational_backgrounds.xml
  def index
    @educational_backgrounds = EducationalBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @educational_backgrounds }
    end
  end

  # GET /educational_backgrounds/1
  # GET /educational_backgrounds/1.xml
  def show
    @educational_background = EducationalBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @educational_background }
    end
  end

  # GET /educational_backgrounds/new
  # GET /educational_backgrounds/new.xml
  def new
    @educational_background = EducationalBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @educational_background }
    end
  end

  # GET /educational_backgrounds/1/edit
  def edit
    @educational_background = EducationalBackground.find(params[:id])
  end

  # POST /educational_backgrounds
  # POST /educational_backgrounds.xml
  def create
    @educational_background = EducationalBackground.new(params[:educational_background])

    respond_to do |format|
      if @educational_background.save
        format.html { redirect_to(@educational_background, :notice => 'Educational background was successfully created.') }
        format.xml  { render :xml => @educational_background, :status => :created, :location => @educational_background }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @educational_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /educational_backgrounds/1
  # PUT /educational_backgrounds/1.xml
  def update
    @educational_background = EducationalBackground.find(params[:id])

    respond_to do |format|
      if @educational_background.update_attributes(params[:educational_background])
        format.html { redirect_to(@educational_background, :notice => 'Educational background was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @educational_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /educational_backgrounds/1
  # DELETE /educational_backgrounds/1.xml
  def destroy
    @educational_background = EducationalBackground.find(params[:id])
    @educational_background.destroy

    respond_to do |format|
      format.html { redirect_to(educational_backgrounds_url) }
      format.xml  { head :ok }
    end
  end
end
