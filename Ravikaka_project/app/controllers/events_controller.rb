class EventsController < ApplicationController

	def index
  		@user = User.find(session[:user_id])
	end

	def show
		@user = User.find(session[:user_id])
	end
end