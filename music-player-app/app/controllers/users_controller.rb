class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def login
    # @user = User.find(params[:id])
    @user = User.all
  end

  def loginprocess
    user = User.all.select {|user| user.name == params[:name]}[0]
    if user.password == params[:password]
      redirect_to user
    else
      redirect_to "/users/login"
    end
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    redirect_to @user
  end


  private

  def user_params
    params.require(:user).permit(:name, :email,:password)
  end

end
