class UsersController < ApplicationController
  def index
  	@users = User.all
  	# render json: @users
  end

  def create
	@user = User.create(name:(0...8).map { (65 + rand(26)).chr }.join)
  	redirect_to '/users/index'
  end

    def new
  	@user = User.create(name: params[:name])
  	redirect_to '/users/index'
    end

    def show
    	@users =User.first
    	render json: @users
    end

    def edit
    	@users = User.first
    	render json: @users
    end

end
