class HigerEducationBackgroundsController < ApplicationController
  # GET /higer_education_backgrounds
  # GET /higer_education_backgrounds.xml
  def index
    @higer_education_backgrounds = HigerEducationBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @higer_education_backgrounds }
    end
  end

  # GET /higer_education_backgrounds/1
  # GET /higer_education_backgrounds/1.xml
  def show
    @higer_education_background = HigerEducationBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @higer_education_background }
    end
  end

  # GET /higer_education_backgrounds/new
  # GET /higer_education_backgrounds/new.xml
  def new
    @higer_education_background = HigerEducationBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @higer_education_background }
    end
  end

  # GET /higer_education_backgrounds/1/edit
  def edit
    @higer_education_background = HigerEducationBackground.find(params[:id])
  end

  # POST /higer_education_backgrounds
  # POST /higer_education_backgrounds.xml
  def create
    @higer_education_background = HigerEducationBackground.new(params[:higer_education_background])

    respond_to do |format|
      if @higer_education_background.save
        format.html { redirect_to(@higer_education_background, :notice => 'Higer education background was successfully created.') }
        format.xml  { render :xml => @higer_education_background, :status => :created, :location => @higer_education_background }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @higer_education_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /higer_education_backgrounds/1
  # PUT /higer_education_backgrounds/1.xml
  def update
    @higer_education_background = HigerEducationBackground.find(params[:id])

    respond_to do |format|
      if @higer_education_background.update_attributes(params[:higer_education_background])
        format.html { redirect_to(@higer_education_background, :notice => 'Higer education background was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @higer_education_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /higer_education_backgrounds/1
  # DELETE /higer_education_backgrounds/1.xml
  def destroy
    @higer_education_background = HigerEducationBackground.find(params[:id])
    @higer_education_background.destroy

    respond_to do |format|
      format.html { redirect_to(higer_education_backgrounds_url) }
      format.xml  { head :ok }
    end
  end
end
