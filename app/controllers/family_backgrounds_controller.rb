class FamilyBackgroundsController < ApplicationController
  # GET /family_backgrounds
  # GET /family_backgrounds.xml
  def index
    @family_backgrounds = FamilyBackground.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @family_backgrounds }
    end
  end

  # GET /family_backgrounds/1
  # GET /family_backgrounds/1.xml
  def show
    @family_background = FamilyBackground.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @family_background }
    end
  end

  # GET /family_backgrounds/new
  # GET /family_backgrounds/new.xml
  def new
    @family_background = FamilyBackground.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @family_background }
    end
  end

  # GET /family_backgrounds/1/edit
  def edit
    @family_background = FamilyBackground.find(params[:id])
  end

  # POST /family_backgrounds
  # POST /family_backgrounds.xml
  def create
    @family_background = FamilyBackground.new(params[:family_background])

    respond_to do |format|
      if @family_background.save
        format.html { redirect_to(@family_background, :notice => 'Family background was successfully created.') }
        format.xml  { render :xml => @family_background, :status => :created, :location => @family_background }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @family_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /family_backgrounds/1
  # PUT /family_backgrounds/1.xml
  def update
    @family_background = FamilyBackground.find(params[:id])

    respond_to do |format|
      if @family_background.update_attributes(params[:family_background])
        format.html { redirect_to(@family_background, :notice => 'Family background was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @family_background.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /family_backgrounds/1
  # DELETE /family_backgrounds/1.xml
  def destroy
    @family_background = FamilyBackground.find(params[:id])
    @family_background.destroy

    respond_to do |format|
      format.html { redirect_to(family_backgrounds_url) }
      format.xml  { head :ok }
    end
  end
end
