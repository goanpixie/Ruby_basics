class EventsController < ApplicationController

	def index
  		@user = User.find(session[:user_id])
  		# @event=Event.find(params[:id])
  		@events=Event.all
	end

	def show
		@user = User.find(session[:user_id])
	end

	def create    
	    @user=User.find(session[:user_id])
	    @events=Event.all
	    @event= Event.create( information:params[:information], user:User.find(session[:user_id]))
	      if @event.valid?
	            @event.save
	            redirect_to '/events_index'
	      else
	            flash[:errors] = @event.errors.full_messages
	            redirect_to :back
	      end 
	end 

	def edit
  		@event=Event.find(params[:id])
  	end


    def update 
      @event=Event.find(params[:id])
      @event.update(information:params[:information])
      	 if @event.valid?
          flash[:success] = "Information successfully updated"
          redirect_to '/events_index'
        else
          flash[:errors] = @event.errors.full_messages
            redirect_to :back
        end
    end

    def destroy
      event = Event.find(params[:id])
      event.destroy
      session[:user_id] = nil
      redirect_to '/events_index' 
    end
end 