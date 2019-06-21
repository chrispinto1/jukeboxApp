class UsersController < ApplicationController

  before_action :authorized?, only: [:show]

  def index

  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    playlist = Playlist.create(user_id: @user.id)
    @user.playlist_id = playlist.id
    @user.save
    session[:user_id] = @user.id
    redirect_to "/dashboard"
  end

  def show
    @user = User.find(session[:user_id])
  end

  def settings
  end

  def update
    user = User.find(session[:user_id])
    if params["/settings"][:name] != ""
      user.update(name: params["/settings"][:name])
    end
    if params["/settings"][:email] != ""
      user.update(email: params["/settings"][:email])
    end
    if params["/settings"][:password] != ""
      user.update(password: params["/settings"][:password])
    end
    user.save
    redirect_to "/settings"
  end

  def contact

  end




  private

  def user_params
    params.require(:user).permit(:name, :email,:password)
  end

end
