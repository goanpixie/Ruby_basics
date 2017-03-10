class UsersController < ApplicationController

	def index
	end

	def create
    	if !session[:user_id]
   			 @user = User.create(name:params[:name],email:params[:email],password:params[:password],password_confirmation:params[:password_confirmation])
	  			if @user.valid?
		  			@user.save
		  			session[:user_id] = @user.id
		  			redirect_to '/events/show'
		  		else
	  		 	flash[:errors] = @user.errors.full_messages
      			redirect_to :back
	  			end 
	  	end 
  	end

  	def edit
  		@user=User.find(session[:user_id])
  	end


    def update 
      @user = User.find(session[:user_id])
      @user.update(name:params[:name], email:params[:email],password:params[:password])
        if @user.valid?
          flash[:success] = "User successfully updated"
          redirect_to '/events/show'
        else
          flash[:errors] = @user.errors.full_messages
            redirect_to :back
        end
    end 

  	def login

      user = User.find_by_email(params[:email])

        if user && user.authenticate(params[:password])
        
          session[:user_id] = user.id
          redirect_to '/events/show'
        else
          flash[:errors] = ["Invalid combination"]
          redirect_to :back
        end
    end

  	def logout
      session[:user_id] = nil
      redirect_to '/'
    end



end