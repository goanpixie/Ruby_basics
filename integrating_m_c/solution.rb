index.html.erb

<h1>Users</h1>
<table>
	<tr>
		<td>Name</td>
		<td>Created At</td>
		<td>Updated At</td>
	</tr>
	<% @users.each do |user|%>
	<tr>
		<td><%= user.name%></td>
		<td><%= user.created_at%></td>
		<td><%= user.updated_at%></td>
	</tr>
	<%end%>
</table>

<h2>Create User</h2>
<form action='/users/' method='post'>
  <input name="authenticity_token" value="<%= form_authenticity_token %>" type="hidden">
  <input type='text' name='name' />
  <input type='submit' value='Create' />
</form>

------------

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

    	@users =User.last
    	render json: @users.id
    end

    def edit
    	@users = User.last(params[:id]) 
    	# @users = User.first(params[:name]) 	
    end


    def total
    	@users = User.last(params[:id]) 	
    end



end

--------------

routes.rb

Rails.application.routes.draw do
 get 'users/index'
 
 root 'users#index'

 post "users" => "users#create"

 post "users" => "users#new"

 post "users" => "users#show"

 resources :users

 resources :users, path: 'users/1/'

 post "users" => "users#edit"

 get "users/:id/edit" => "users#index"

 put "media/:id/update" => "media#update"

 post "users"  => "users#total"