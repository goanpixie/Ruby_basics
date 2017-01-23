class UsersController < ApplicationController
  def index
  	@users = User.all
  	# render json: @users
  end

  def create
  	@user = User.create(name: params[:name])
  	redirect_to '/users/index'
  end

    def new
  	@user = User.create(name: params[:name])
    end
end
