class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def show 
  	@user = User.find(params[:id])
  end

  def edit
  	@user = User.find(params[:id])
  end


  def create
    @user = User.new(params[:user])
    if @user.save
      # Handle a successful save.
      flash[:success] = "Welcome to the Video Chat!"
      redirect_to @user
    else
      render 'new'
    end
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
      # Handle a successful update.
    else
      render 'edit'
    end
  end

end
