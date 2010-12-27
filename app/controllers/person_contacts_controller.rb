class PersonContactsController < ApplicationController
  # GET /person_contacts
  # GET /person_contacts.xml
  def index
    @person_contacts = PersonContact.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @person_contacts }
    end
  end

  # GET /person_contacts/1
  # GET /person_contacts/1.xml
  def show
    @person_contact = PersonContact.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @person_contact }
    end
  end

  # GET /person_contacts/new
  # GET /person_contacts/new.xml
  def new
    @person_contact = PersonContact.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @person_contact }
    end
  end

  # GET /person_contacts/1/edit
  def edit
    @person_contact = PersonContact.find(params[:id])
  end

  # POST /person_contacts
  # POST /person_contacts.xml
  def create
    @person_contact = PersonContact.new(params[:person_contact])

    respond_to do |format|
      if @person_contact.save
        format.html { redirect_to(@person_contact, :notice => 'Person contact was successfully created.') }
        format.xml  { render :xml => @person_contact, :status => :created, :location => @person_contact }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @person_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /person_contacts/1
  # PUT /person_contacts/1.xml
  def update
    @person_contact = PersonContact.find(params[:id])

    respond_to do |format|
      if @person_contact.update_attributes(params[:person_contact])
        format.html { redirect_to(@person_contact, :notice => 'Person contact was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @person_contact.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /person_contacts/1
  # DELETE /person_contacts/1.xml
  def destroy
    @person_contact = PersonContact.find(params[:id])
    @person_contact.destroy

    respond_to do |format|
      format.html { redirect_to(person_contacts_url) }
      format.xml  { head :ok }
    end
  end
end
