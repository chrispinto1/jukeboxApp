class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find(params[:name])
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to "/dashboard"
    else
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
  end
end
