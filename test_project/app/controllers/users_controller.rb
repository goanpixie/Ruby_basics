class UsersController < ApplicationController
  def index
  	    @users = User.all
  end
  def hello
  render :text =>"Hello Coding Dojo"
  
  end
end
