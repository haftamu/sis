class StudentsController < ApplicationController    
    def index
      # NOP
    end
    #Create New Student
        
    def show
        @person = Person.find(params[:id])
    end
        
    def edit
        @person = Person.find(params[:id])
        logger.info("=======params[:id] = #{@person.inspect}=======")  
    end
    
    def update
        @person = Person.find(params[:person][:id])
        if @person.update_attributes(params[:person])
            redirect_to :action => 'show', :id => @person
        else
            redirect_to :action => "edit", :id => @person
        end
    end
end