class SongsController < ApplicationController

  before_action :authorized?, only: [:index]

  def index
    @songs = Song.all
    input = params[:search]
    if input
      @songs = Song.all.select {|song| song.title.include?(input) || song.artist.include?(input)}
      if @songs.size == 0
        flash[:message] = "No songs match the title inputed"
        @songs = Song.all
      end
    else
      @songs = Song.all
    end
  end

  def putsong
    song = Song.find(params[:song_id])
    song.addToPlaylist(session[:user_id],song)
    redirect_to "/songs"
  end

  def remove
    user = User.find(session[:user_id])
    user.playlist.songs.delete(params[:song_id])
    redirect_to "/dashboard"
  end

end
