class TransferController < ApplicationController
  

  
  def edit #The application receives a request to edit a user. It reads the data into a new User model object.

     @transfer = Transfer.find(params[:id])
  end 
  
  def search
    
  end

  def index #The application displays the already saved transfer information .
     @transfer = Transfer.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @transfer }
    end 
  end

  def new #The application receives a request to edit a user. It reads the data into a new User model object.
    @transfer = Transfer.new
   
    respond_to do |format|
      format.html # new.html.erb
      format.xml { render :xml => @transfer }
    end
  end

  def show
    @transfer = Transfer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @transfer }
    end
  end

  def create
    @transfer = Transfer.new(params[:transfer])
    
    respond_to do |format|
      if @transfer.save
        format.html { redirect_to(:action => :index) }
        format.xml  { render :xml => @transfer, :status => :created, :location => @transfer  }
        flash[:notice] = "Transfer was successfully created."
      else
        
        format.html { render :action => "new" }
        format.xml  { render :xml => @transfer.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    @transfer = Transfer.find(params[:id])
    @transfer.destroy

    respond_to do |format|
      format.html { redirect_to(transfers_url) }
      format.xml  { head :ok }
   end
  end

end
