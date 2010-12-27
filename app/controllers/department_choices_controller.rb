class DepartmentChoicesController < ApplicationController
  # GET /department_choices
  # GET /department_choices.xml
  def index
    @department_choices = DepartmentChoice.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @department_choices }
    end
  end

  # GET /department_choices/1
  # GET /department_choices/1.xml
  def show
    @department_choice = DepartmentChoice.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @department_choice }
    end
  end

  # GET /department_choices/new
  # GET /department_choices/new.xml
  def new
    @department_choice = DepartmentChoice.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @department_choice }
    end
  end

  # GET /department_choices/1/edit
  def edit
    @department_choice = DepartmentChoice.find(params[:id])
  end

  # POST /department_choices
  # POST /department_choices.xml
  def create
    @department_choice = DepartmentChoice.new(params[:department_choice])

    respond_to do |format|
      if @department_choice.save
        format.html { redirect_to(@department_choice, :notice => 'Department choice was successfully created.') }
        format.xml  { render :xml => @department_choice, :status => :created, :location => @department_choice }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @department_choice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /department_choices/1
  # PUT /department_choices/1.xml
  def update
    @department_choice = DepartmentChoice.find(params[:id])

    respond_to do |format|
      if @department_choice.update_attributes(params[:department_choice])
        format.html { redirect_to(@department_choice, :notice => 'Department choice was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @department_choice.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /department_choices/1
  # DELETE /department_choices/1.xml
  def destroy
    @department_choice = DepartmentChoice.find(params[:id])
    @department_choice.destroy

    respond_to do |format|
      format.html { redirect_to(department_choices_url) }
      format.xml  { head :ok }
    end
  end
end
