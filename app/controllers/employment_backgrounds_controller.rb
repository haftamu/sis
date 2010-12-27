class EmploymentBackgroundsController < ApplicationController
  # GET /employment_backgrounds
  # GET /employment_backgrounds.xml
  def index
    @employment_backgrounds = EmploymentBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employment_backgrounds }
    end
  end

  # GET /employment_backgrounds/1
  # GET /employment_backgrounds/1.xml
  def show
    @employment_background = EmploymentBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employment_background }
    end
  end

  # GET /employment_backgrounds/new
  # GET /employment_backgrounds/new.xml
  def new
    @employment_background = EmploymentBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employment_background }
    end
  end

  # GET /employment_backgrounds/1/edit
  def edit
    @employment_background = EmploymentBackground.find(params[:id])
  end

  # POST /employment_backgrounds
  # POST /employment_backgrounds.xml
  def create
    @employment_background = EmploymentBackground.new(params[:employment_background])

    respond_to do |format|
      if @employment_background.save
        format.html { redirect_to(@employment_background, :notice => 'Employment background was successfully created.') }
        format.xml  { render :xml => @employment_background, :status => :created, :location => @employment_background }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employment_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employment_backgrounds/1
  # PUT /employment_backgrounds/1.xml
  def update
    @employment_background = EmploymentBackground.find(params[:id])

    respond_to do |format|
      if @employment_background.update_attributes(params[:employment_background])
        format.html { redirect_to(@employment_background, :notice => 'Employment background was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employment_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employment_backgrounds/1
  # DELETE /employment_backgrounds/1.xml
  def destroy
    @employment_background = EmploymentBackground.find(params[:id])
    @employment_background.destroy

    respond_to do |format|
      format.html { redirect_to(employment_backgrounds_url) }
      format.xml  { head :ok }
    end
  end
end
