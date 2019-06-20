class UsersController < ApplicationController

  before_action :authorized?, only: [:show]

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to "/dashboard"
  end

  def show
    @user = User.find(session[:user_id])
  end




  private

  def user_params
    params.require(:user).permit(:name, :email,:password)
  end

end
