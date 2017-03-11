class EventsController < ApplicationController

	def index
  		# @event=Event.find(params[:id])
  		@events=Event.all
  		@user=User.find(session[:user_id])
	end

	def show
		@user = User.find(session[:user_id])
		@picture = Picture.new(picture_params)
		# @picture = Picture.create(title:params[:title],description:params[:description],image:params[:image],user:User.find(session[:user_id]))
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
      redirect_to '/events_index' 
    end

    def picture_params
      params.require(:picture).permit(:title, :description, :image)
    end
end 