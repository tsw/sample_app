class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  end

  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		#handle a successful save
  		sign_in @user
  		flash[:success] = "Welcome to the Sample App!"
  		redirect_to @user #user_path(@user)
  	else
  		render 'new'
  	end
  end
end
