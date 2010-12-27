class StudentRefereesController < ApplicationController
  # GET /student_referees
  # GET /student_referees.xml
  def index
    @student_referees = StudentReferee.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @student_referees }
    end
  end

  # GET /student_referees/1
  # GET /student_referees/1.xml
  def show
    @student_referee = StudentReferee.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @student_referee }
    end
  end

  # GET /student_referees/new
  # GET /student_referees/new.xml
  def new
    @student_referee = StudentReferee.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @student_referee }
    end
  end

  # GET /student_referees/1/edit
  def edit
    @student_referee = StudentReferee.find(params[:id])
  end

  # POST /student_referees
  # POST /student_referees.xml
  def create
    @student_referee = StudentReferee.new(params[:student_referee])

    respond_to do |format|
      if @student_referee.save
        format.html { redirect_to(@student_referee, :notice => 'Student referee was successfully created.') }
        format.xml  { render :xml => @student_referee, :status => :created, :location => @student_referee }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @student_referee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /student_referees/1
  # PUT /student_referees/1.xml
  def update
    @student_referee = StudentReferee.find(params[:id])

    respond_to do |format|
      if @student_referee.update_attributes(params[:student_referee])
        format.html { redirect_to(@student_referee, :notice => 'Student referee was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @student_referee.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /student_referees/1
  # DELETE /student_referees/1.xml
  def destroy
    @student_referee = StudentReferee.find(params[:id])
    @student_referee.destroy

    respond_to do |format|
      format.html { redirect_to(student_referees_url) }
      format.xml  { head :ok }
    end
  end
end
