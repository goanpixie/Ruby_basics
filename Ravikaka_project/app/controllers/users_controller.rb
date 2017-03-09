class UsersController < ApplicationController

	def index
	end

	def create
    	if !session[:user_id]
   			 @user = User.create(name:params[:name],email:params[:email],password:params[:password],password_confirmation:params[:password_confirmation])
	  			if @user.valid?
		  			@user.save
		  			session[:user_id] = @user.id
		  			redirect_to '/events/index'
		  		else
	  		 	flash[:errors] = @user.errors.full_messages
      			redirect_to :back
	  			end 
	  	end 
  	end

  	def login

      user = User.find_by_email(params[:email])

        if user && user.authenticate(params[:password])
        
          session[:user_id] = user.id
          redirect_to '/events/index'
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